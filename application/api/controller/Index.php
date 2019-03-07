<?php
/**
 * Created by PhpStorm.
 * User: Akashi
 * Date: 2019/3/4
 * Time: 19:13
 */

namespace app\api\controller;


use app\api\model\User;
use think\Controller;
use think\Db;
use think\Request;

class Index extends Controller {
    public function index() {
//        $request = Db::query('select * from user where hobby LIKE "%球"');
//        var_dump($request);
    }
    public  function search() {
        return $this->fetch();
    }
    public function getKeyWord(Request $request) {
        $data = $request->post('keyword');
        $sql = "SELECT * FROM user WHERE username LIKE '%{$data}%'";
//        $sql = Db::query('select * from user where username LIKE "%{$data}%"');
        $response = Db::query($sql);
        var_dump($response);
//        return json([
//           'list' => $response
//        ]);
    }
}