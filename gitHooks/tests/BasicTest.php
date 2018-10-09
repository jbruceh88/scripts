<?php

use PHPUnit\Framework\TestCase;



class BasictTest extends TestCase

    public function testName()
    {
      $name = 'Jason';
      $this->assertEquals($name,'Jason');
    }

    public function testNumber()
    {
      $number = '111111';
      $this->assertEquals($number, '111111');
    }
}


?>
