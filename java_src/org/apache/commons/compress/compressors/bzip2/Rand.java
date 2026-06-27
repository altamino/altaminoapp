package org.apache.commons.compress.compressors.bzip2;

import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.flag.model.Flag;
import com.narvii.master.MasterTemplatePickerFragment;
import com.narvii.permisson.NVPermission;
import com.narvii.poweruser.history.ModerationHistory;
import com.narvii.util.ws.WsMessage;
import com.narvii.video.SharedVideoView;
import com.tonyodev.fetch.FetchConst;
import com.tonyodev.fetch.FetchService;
import io.agora.rtc.Constants;
import org.apache.commons.compress.archivers.zip.UnixStat;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes4.dex */
final class Rand {
    private static final int[] RNUMS = {619, 720, 127, FetchService.QUERY_ALL, 931, 816, 813, 233, 566, 247, 985, 724, ModerationHistory.OP_ADMIN_SEND_STRIKE_TO_USER, 454, 863, 491, 741, 242, 949, 214, 733, 859, 335, 708, 621, 574, 73, 654, 730, 472, 419, 436, 278, 496, 867, 210, 399, 680, FetchService.QUERY_SINGLE, 51, 878, 465, 811, 169, 869, 675, 611, 697, 867, 561, 862, 687, 507, 283, FetchService.QUERY_BY_STATUS, 129, 807, 591, 733, 623, 150, 238, 59, 379, 684, 877, 625, 169, 643, 105, 170, 607, 520, 932, 727, 476, 693, 425, 174, 647, 73, 122, 335, 530, 442, 853, 695, 249, 445, 515, 909, 545, 703, 919, 874, 474, 882, 500, 594, 612, 641, IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE, 220, 162, 819, 984, 589, 513, 495, 799, 161, 604, 958, 533, 221, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 386, 867, 600, 782, 382, 596, 414, 171, 516, 375, 682, 485, 911, 276, 98, 553, 163, 354, 666, 933, 424, 341, 533, 870, 227, 730, 475, 186, 263, 647, 537, 686, 600, 224, 469, 68, 770, 919, 190, 373, 294, 822, 808, 206, 184, 943, 795, 384, 383, 461, SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, 758, 839, 887, 715, 67, 618, 276, 204, 918, 873, 777, 604, 560, 951, 160, IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, 722, 79, 804, 96, 409, 713, 940, 652, 934, 970, 447, FetchService.ACTION_RETRY, 353, 859, 672, 112, 785, 645, 863, 803, 350, WsMessage.THREAD_WAIT_LIST_JOIN_RESPONSE, 93, 354, 99, 820, 908, 609, 772, Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR, 274, 580, 184, 79, 626, 630, 742, 653, 282, 762, 623, 680, 81, 927, 626, 789, 125, 411, 521, 938, 300, 821, 78, 343, 175, 128, 250, 170, 774, 972, 275, Flag.TYPE_NONE, 639, 495, 78, 352, 126, 857, 956, 358, 619, 580, 124, 737, 594, 701, 612, 669, 112, 134, 694, 363, 992, 809, 743, 168, 974, 944, 375, 748, 52, 600, 747, 642, 182, 862, 81, 344, 805, 988, 739, UnixStat.DEFAULT_LINK_PERM, 655, 814, 334, 249, 515, 897, 955, 664, 981, 649, 113, 974, 459, 893, 228, 433, 837, 553, 268, 926, 240, 102, 654, 459, 51, 686, 754, MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_EXCEED_QUOTA, 760, UnixStat.DEFAULT_DIR_PERM, 403, 415, 394, 687, 700, 946, 670, 656, 610, 738, 392, 760, 799, 887, 653, 978, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 576, 617, 626, 502, 894, 679, 243, 440, 680, 879, 194, 572, 640, 724, 926, 56, 204, 700, 707, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 457, 449, 797, 195, 791, 558, 945, 679, 297, 59, 87, 824, 713, 663, 412, 693, 342, 606, 134, 108, 571, 364, 631, 212, 174, 643, 304, 329, 343, 97, 430, 751, 497, FetchService.ACTION_NETWORK, 983, 374, 822, 928, 140, 206, 73, 263, 980, 736, 876, 478, 430, 305, 170, 514, 364, 692, 829, 82, 855, 953, 676, 246, 369, 970, 294, 750, 807, 827, 150, 790, 288, 923, 804, 378, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 828, 592, 281, 565, 555, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PLAY, 82, 896, 831, 547, 261, 524, 462, 293, 465, 502, 56, 661, 821, 976, 991, 658, 869, FetchConst.STATUS_REMOVED, 758, 745, 193, 768, 550, 608, 933, 378, 286, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_TAKEN, 979, 792, 961, 61, 688, 793, 644, 986, 403, 106, 366, FetchConst.STATUS_REMOVED, 644, 372, 567, 466, 434, 645, 210, 389, 550, 919, 135, 780, 773, 635, 389, 707, 100, 626, 958, 165, 504, 920, 176, 193, 713, 857, 265, NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 50, 668, 108, 645, 990, 626, 197, 510, 357, 358, 850, 858, 364, 936, 638};

    static int rNums(int i) {
        return RNUMS[i];
    }
}
