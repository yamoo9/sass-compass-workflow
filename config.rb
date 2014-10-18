# Compass 플러그인 추가
require "breakpoint"
require "susy"

# CSS 파일 기본 인코딩(Default Encoding) 설정
# Windows에서 한글, 일어, 중국어 등 SCSS 파일을 CSS로 컴파일 시 문자 인코딩 에러가 생길 경우
# 아래 코드를 설정하여 기본 인코딩을 UTF-8로 설정하면 문제가 해결됨.
Encoding.default_external = "utf-8"

# 프로젝트 내 폴더 경로 지정
http_path = "/"
css_dir = "_/css"
sass_dir = "_/components/sass"
images_dir = "_/images"
javascripts_dir = "_/js"

# SASS => CSS 변경 시에 변경되는 아웃풋 스타일 설정
# output_style = :expanded | :nested | :compact | :compressed
output_style = :compressed

# 상대 경로 지정 설정
# relative_assets = true

# 변경된 내용 주석 처리 여부
line_comments = false


# 만약 SASS 구문을 더 선호한다면, SCSS => SASS 문법으로 변경
# project again passing --syntax sass, 주석의 #을 지우세요.
# preferred_syntax = :sass
# 아래 코드를 실행하세요. (주석의 #을 지우세요)
# sass-convert -R --from scss --to sass common/css/input scss && rm -rf sass && mv scss sass