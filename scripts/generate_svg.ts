async function generatePdf(path: string) {
  const output = await new Deno.Command("draw.io.exe", {
    args: [
      path,
      "--crop",
      "--export",
      "--format=pdf",
      `--output=${path}.pdf`,
    ],
    stdout: "piped",
    stderr: "piped",
  }).output();
  if (!output.success) {
    throw new Error("error generating pdf");
  }
}

async function generateSvg(path: string) {
  const output = await new Deno.Command("inkscape", {
    "args": [
      `${path}.pdf`,
      "--pdf-poppler",
      "--export-plain-svg",
      "--export-text-to-path",
      `--export-filename=${path}.svg`,
    ],
    stdout: "piped",
    stderr: "piped",
  }).output();
  if (!output.success) {
    throw new Error("error generating svg");
  }
}

if (import.meta.main) {
  for (const path of Deno.args) {
    await generatePdf(path);
    await generateSvg(path);
  }
}
