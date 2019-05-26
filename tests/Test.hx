package tests;

using deepequals.DeepEquals;

class Test extends utest.Test
{
    public function specNull():Void
    {
        DeepEquals.deepEquals(null, null) == true;
        DeepEquals.deepEquals(null, 0) == false;
    }

    public function specInt():Void
    {
        1.deepEquals(1) == true;
        2.deepEquals(-1) == false;
    }

    public function specFloat():Void
    {
        1.5.deepEquals(1.5) == true;
        30.2.deepEquals(2.4) == false;
    }

    public function specBool():Void
    {
        true.deepEquals(true) == true;
        false.deepEquals(false) == true;
        true.deepEquals(false) == false;
        false.deepEquals(true) == false;
    }

    public function specClass():Void
    {
        Array.deepEquals(Array) == true;
        String.deepEquals(String) == true;
        Array.deepEquals(String) == false;
    }

    public function specArray():Void
    {
        [].deepEquals([]) == true;
        [0, 1, 2].deepEquals([0, 1, 2]) == true;
        [0, 1].deepEquals([0, 1, 2]) == false;
        [0, 1, 3].deepEquals([0, 1, 2]) == false;
    }
}