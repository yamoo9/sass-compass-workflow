module.exports = function(grunt) {

	// NPM 테스크 로딩
	grunt.loadNpmTasks('grunt-contrib-uglify');
	grunt.loadNpmTasks('grunt-contrib-compass');
	grunt.loadNpmTasks('grunt-contrib-watch');

	// Grunt 초기 설정
	grunt.initConfig({

		'uglify': {
			'merge_js': {
				'files': {
					'_/js/script.js' : ['_/components/js/*.js']
				} // files
			} // merge_js

		},// uglify

		'compass': {
			'dev': {
				'options': {
					'config': 'config.rb'
				} // options
			} // dev
		}, // compass

		'watch': {
			'options': { 'livereload': true },
			'scripts': {
				'files': ['_/components/js/*.js'],
				'tasks': ['uglify']
			}, // scripts
			'sass': {
				files: ['_/components/sass/*'],
				tasks: ['compass:dev']
			}, // sass
			'html': {
				files: ['*.html']
			} // html
		} // watch

	});

	// 테스크 등록
	grunt.registerTask('default', ['watch']);

};