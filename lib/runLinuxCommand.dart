import 'dart:io';

/* String output = await runLinuxCommand("pkexec", [
  "python/script.py"
]); */

Future<String> runLinuxCommand(String exec, List<String> arguments) async {
  var result = await Process.run(exec, arguments, runInShell: true);
  if (result.stderr is List<String>) {
    throw Exception(result.stderr.toString());
  }
  if (result.stdout is List<int>) {
    return "";
  } else {
    return result.stdout;
  }
}
