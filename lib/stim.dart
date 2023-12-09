class Stimuli {
  /// Stimuli manager. Can be created from a file or iterable.

  /// A list of the stimuli
  late List<String> _stimuli = <String>[];

  /// Current stimuli after running the [next] method.
  late String currentStim;

  /// Size of original stim list.
  late int stimCountOriginal;

  /// Default constructor requires a list of stimuli.
  Stimuli({required stimuli}) {
    _stimuli = List<String>.from(stimuli);
    stimCountOriginal = _stimuli.length;
  }

  /// Number of stim that remain to be used
  int get stimCountRemaining => _stimuli.length;

  /// Number of stim that have been used
  int get stimCountUsed => stimCountOriginal - stimCountRemaining;

  /// Get the next stim from stimuli.
  void next() {
    currentStim = _stimuli.removeAt(0);
  }

  /// Randomize the order of the stimuli.
  void randomize() {
    _stimuli.shuffle();
  }
}
