var app = angular.module('myApp', []);
app.controller('myCtrl', function($scope){
    $scope.leftContents = [
        {
            title: 'Bỏ sao lưu dữ liệu trong cột',
            content: 'Chắc hẳn bạn cũng đã có một lần vướng mắc vì kiểu định dạng dữ liệu khá phổ biến và khó chịu trong Power Query là dữ liệu được xếp chồng lên nhau trong một cột. Trong bài viết này, Học Excel ...'
        },{
            title: 'Thay đổi vị trí dữ liệu nguồn',
            content:'Làm thế nào bạn có thể thay đổi các truy vấn dữ liệu để trỏ đến nguồn trực tiếp, thay vì dữ liệu mẫu? Trong bài viết này, Học Excel Online sẽ cùng bạn trả lời câu hỏi trên bằng cách sử ...'
        },{
            title:'Câu lệnh If cho Logic có điều kiện',
            content:'Trong bài viết trước, chúng ra đã cùng tìm hiểu sơ về các hoạt động của Power Query, bây giờ Học Excel Online cùng bạn sẽ đi sâu hơn một chút và hiểu về câu lệnh If Power Query nhé! Trong Excel ...'
        }
    ];
    $scope.rightContents = [
        'Hướng dẫn các viết nhiều hàm IF lồng nhau dễ hiểu dễ thực hiện',
        'Hướng dẫn tính thuế thu nhập cá nhân với tiền thưởng tết',
        'Hướng dẫn tính thuế thu nhập cá nhân với quà tặng là tiền hoặc đồ dùng từ công ty',
        'Hướng dẫn cách dùng học VLOOKUP thay thế hàm IF lồng nhau trong Excel',
        'Hướng dẫn tính thuế thu nhập cá nhân với các khoản trúng thưởng'
    ];
});