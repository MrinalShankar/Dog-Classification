�	�\5�Չ�@�\5�Չ�@!�\5�Չ�@	a��7�X@a��7�X@!a��7�X@"n
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetails-�\5�Չ�@���͋�@1JJ^@I�>�̔��?Y���O�@*	#��&�d[A2S
Iterator::Model::MapAndBatch�H�s
�@!j�i��X@)�H�s
�@1j�i��X@:Preprocessing2F
Iterator::Model���@!��O��X@)���R�1�?1J5�K?:Preprocessing2\
%Iterator::Model::MapAndBatch::Shuffle�ݑ����?!L���`E?)�ݑ����?1L���`E?:Preprocessing:�
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
�Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
�Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
�Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
�Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)�
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis�
host�Your program is HIGHLY input-bound because 98.3% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.no*no>Look at Section 3 for the breakdown of input time on the host.B�
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown�
	���͋�@���͋�@!���͋�@      ��!       "	JJ^@JJ^@!JJ^@*      ��!       2      ��!       :	�>�̔��?�>�̔��?!�>�̔��?B      ��!       J	���O�@���O�@!���O�@R      ��!       Z	���O�@���O�@!���O�@JGPU�"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_2/depthwise/depthwiseDepthwiseConv2dNativeO�^��b�?!O�^��b�?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_1/expand/Conv2DConv2D�	*�@�?!�~�d�Q�?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv/depthwise/depthwiseDepthwiseConv2dNative�B����?!���o�b�?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_1/depthwise/depthwiseDepthwiseConv2dNative���5�?!K���?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_1/expand/BatchNorm/FusedBatchNormV3FusedBatchNormV38]L�61�?!kb��^��?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/Conv/Conv2DConv2D�S�'�ԟ?!oFt�x��?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_1/expand/Relu6Relu6�¸F	�?!���T���?"-
IteratorGetNext/_3_SendYr�b�?!�I���A�?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/Conv_1/Conv2DConv2Du��7J8�?!FHp�x��?"�
�sequential_1/keras_layer_1/StatefulPartitionedCall/StatefulPartitionedCall/StatefulPartitionedCall/predict/MobilenetV2/expanded_conv_2/expand/Conv2DConv2D�>Ky�?!12I��?2blackQ      Y@"�
host�Your program is HIGHLY input-bound because 98.3% of the total step time sampled is waiting for input. Therefore, you should first focus on reducing the input time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2�
=type.googleapis.com/tensorflow.profiler.GenericRecommendation�
nono*�Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).:
Refer to the TF2 Profiler FAQ2"GPU(: 