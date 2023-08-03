<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>入力画面</title>
<link rel="stylesheet" href=CSS/screenStyle.css>
<link rel="stylesheet" href="CSS/base.css"> 
</head>
<body>
    <header>
        <img src="#">
        <div>
            <h1>JavaTeamDevelopment</h1>
        </div>
    </header>
    <section>
        <div id="title">
            <h2>自己紹介の内容を記入してください</h2>
        </div>
        <form action="InputScreen" method="post" accept-charset="UTF-8">
            <div class="box">
                <label>名前</label><input type="text" name="name" required>
            </div>
            <div class="box">
                <label>フリガナ</label><input type="text" name="kana" required>
            </div>
            <div class="box">
                <label> 性別</label><input type="radio" name="gender" value="1" id="customRadio">男性<input type="radio"
                    name="gender" value="2" id="customRadio">女性
            </div>
            <div class="box">
                <label> 趣味 </label>
                <div class="list">
                    <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="旅行" id="customCheck">
                        <label for="customCheck1">旅行</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="料理" id="customCheck">
                        <label for="customCheck2">料理</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="読書" id="customCheck">
                        <label for="customCheck3">読書</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="運動" id="customCheck">
                        <label for="customCheck4">運動</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="映画" id="customCheck">
                        <label for="customCheck5">映画</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="音楽" id="customCheck">
                        <label for="customCheck6">音楽</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="アニメ" id="customCheck">
                        <label for="customCheck7">アニメ</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="ゲーム" id="customCheck">
                        <label for="customCheck8">ゲーム</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="手芸" id="customCheck">
                        <label for="customCheck9">手芸</label>
                      </div>
                    
                      <div class="checkbox-container">
                        <input type="checkbox" name="hobby" value="庭いじり" id="customCheck">
                        <label for="customCheck10">庭いじり</label>
                      </div>
                </div>
            </div>
            <div class="box">
                <label>一言</label> <textarea name="word" id="word"></textarea>
            </div>
            <div class="access">
                <input type="button" value="戻る" onclick="goBack()">
                <input type="submit" value="次へ">
            </div>
        </form>
    </section>
    <script>
        function goBack() {
          window.history.back();
        }
        </script>
</body>
</html>