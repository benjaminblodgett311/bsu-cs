import "package:test/test.dart";
import "darkle.dart";

main() {
  test('[T1.1] pointThreshold is an integer', () => expect(pointThreshold is int, isTrue));
  test('[T24.1] returns empty string when point threshold not reached', () => expect(getWinner({ "p1": 1, "p2": 2, "p3": 3 }), isEmpty));
  test('[T24.2] returns winner when point threshold reached', () => expect(getWinner({ "p1": 1, "p2": pointThreshold + 2, "p3": 3 }), equals("p2")));
  test('[T24.3] returns winner when point threshold reached by two players', () => expect(getWinner({ "p1": 1, "p2": pointThreshold + 2, "p3": pointThreshold + 3 }), equals("p3")));

  group('score()', () {

    test('[T23.1] rolls with no scores are darkles', () => expect(score([2,2,3,4,6,6]), equals(0)) );
    test('[T23.2] a 5 is worth 50', () => expect(score([2,2,3,4,5,6]), equals(50)) );
    test('[T23.3] two 5 is worth 100', () => expect(score([2,2,3,5,5,6]), equals(100)) );
    test('[T23.4] a straight is worth 1000', () => expect(score([1,2,3,4,5,6]), equals(1000)) );
    test('[T23.5] three pairs is worth 750', () => expect(score([2,2,3,3,6,6]), equals(750)) );
    test('[T23.6] three pairs is worth 750', () => expect(score([1,1,3,3,6,6]), equals(750)) );
    test('[T23.7] three pairs is worth 750', () => expect(score([5,5,2,2,6,6]), equals(750)) );
    test('[T23.8] a 1 is worth 100', () => expect(score([1,2,2,4,3,6]), equals(100)) );
    test('[T23.9] two 1s is worth 200', () => expect(score([1,2,2,4,1,6]), equals(200)) );
    test('[T23.10] three 1s is worth 1000', () => expect(score([1,2,1,4,1,6]), equals(1000)) );
    test('[T23.11] three 2s is worth 200', () => expect(score([3,2,6,4,2,2]), equals(200)) );
    test('[T23.12] three 3s is worth 300', () => expect(score([3,2,6,4,3,3]), equals(300)) );
    test('[T23.13] three 4s is worth 400', () => expect(score([4,2,6,4,4,3]), equals(400)) );
    test('[T23.14] three 5s is worth 500', () => expect(score([4,2,5,5,4,5]), equals(500)) );
    test('[T23.15] three 6s is worth 600', () => expect(score([4,2,6,6,4,6]), equals(600)) );
    test('[T23.16] score is 1200', () => expect(score([1,1,1,1,5,5]), equals(1200)) );
    test('[T23.17] score is 300', () => expect(score([2,2,2,4,5,5]), equals(300)) );
    test('[T23.18] score is 250', () => expect(score([1,1,5]), equals(250)) );

  });

}