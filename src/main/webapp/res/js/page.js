	function toStart(){
		if($('#currentPage').val() != 1){
			$('#form2').submit();
		}
	}
	
	function toEnd(){
		var totalPage = $('#totalPage').val();
		if($('#currentPage').val() != totalPage){
			$('#currentPage2').val(totalPage);
			$('#form2').submit();			
		}
	}

	$('.page_s').on('click',function(){
		var count = $(this).attr('lang');
		if($('#currentPage').val() != count){
			$('#currentPage2').val(count);
			if (count <= parseInt($('#totalPage').val()) && count >= 1){
				$('#form2').submit();
			}
		}
	});
