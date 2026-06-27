package com.google.zxing.pdf417.encoder;

import android.support.v8.renderscript.ScriptIntrinsicBLAS;
import com.google.android.exoplayer2.extractor.ts.PsExtractor;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.master.MasterTemplatePickerFragment;
import com.narvii.permisson.NVPermission;
import com.narvii.util.ws.WsMessage;
import com.narvii.video.SharedVideoView;
import com.narvii.visitor.RecentVisitorListFragment;
import com.tonyodev.fetch.FetchConst;
import com.tonyodev.fetch.FetchService;
import io.agora.rtc.Constants;
import org.apache.commons.compress.archivers.zip.UnixStat;
import org.apache.commons.compress.compressors.bzip2.BZip2Constants;
import tv.danmaku.ijk.media.player.IMediaPlayer;
import tv.danmaku.ijk.media.player.IjkMediaMeta;

/* loaded from: classes2.dex */
final class PDF417ErrorCorrection {
    private static final int[][] EC_COEFFICIENTS = {new int[]{27, 917}, new int[]{522, 568, 723, 809}, new int[]{237, 308, 436, 284, 646, 653, 428, 379}, new int[]{274, 562, 232, 755, 599, 524, IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE, 132, 295, 116, 442, 428, 295, 42, 176, 65}, new int[]{361, 575, 922, 525, 176, 586, 640, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 536, 742, 677, 742, 687, 284, 193, 517, 273, 494, 263, 147, 593, 800, 571, 320, 803, 133, 231, 390, 685, 330, 63, 410}, new int[]{539, 422, 6, 93, 862, 771, 453, 106, 610, 287, 107, 505, 733, 877, 381, 612, 723, 476, 462, TsExtractor.TS_STREAM_TYPE_AC4, 430, 609, 858, 822, 543, 376, UnixStat.DEFAULT_LINK_PERM, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 672, 762, 283, 184, 440, 35, 519, 31, 460, 594, 225, 535, 517, 352, 605, 158, 651, 201, 488, 502, 648, 733, 717, 83, SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, 97, 280, 771, 840, 629, 4, 381, 843, 623, 264, 543}, new int[]{521, FetchService.ACTION_ENQUEUE, 864, 547, 858, 580, 296, 379, 53, 779, 897, 444, WsMessage.LIVE_LAYER_USER_JOINED_EVENT, 925, 749, 415, 822, 93, 217, 208, 928, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 583, 620, 246, 148, 447, 631, 292, 908, 490, 704, 516, BZip2Constants.MAX_ALPHA_SIZE, 457, 907, 594, 723, 674, 292, 272, 96, 684, 432, 686, 606, 860, 569, 193, 219, 129, 186, 236, 287, PsExtractor.AUDIO_STREAM, 775, 278, 173, 40, 379, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_RESTART, 463, 646, 776, 171, 491, 297, 763, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 732, 95, 270, 447, 90, 507, 48, 228, 821, 808, 898, 784, 663, 627, 378, 382, 262, 380, 602, 754, 336, 89, 614, 87, 432, 670, 616, 157, 374, 242, 726, 600, 269, 375, 898, 845, 454, 354, 130, 814, 587, 804, 34, 211, 330, 539, 297, 827, 865, 37, 517, 834, FetchService.ACTION_PROCESS_PENDING, 550, 86, IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE, 4, 108, 539}, new int[]{524, 894, 75, 766, 882, 857, 74, 204, 82, 586, 708, 250, FetchConst.STATUS_REMOVED, 786, 138, 720, 858, 194, FetchService.ACTION_PAUSE, 913, 275, 190, 375, 850, 438, 733, 194, 280, 201, 280, 828, 757, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PLAY, 814, 919, 89, 68, 569, 11, 204, 796, 605, 540, 913, IMediaPlayer.MEDIA_INFO_NOT_SEEKABLE, 700, 799, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_RESPENSE, 439, 418, 592, 668, 353, 859, 370, 694, FetchService.ACTION_REMOVE_REQUEST_ALL, 240, 216, MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY, 284, 549, 209, 884, FetchService.ACTION_PROCESS_PENDING, 70, 329, 793, 490, 274, 877, 162, 749, 812, 684, 461, 334, 376, 849, 521, 307, 291, 803, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_RESTART, 19, 358, 399, 908, 103, UnixStat.DEFAULT_LINK_PERM, 51, 8, 517, 225, 289, 470, 637, 731, 66, 255, 917, 269, 463, 830, 730, 433, 848, 585, WsMessage.THREAD_WAIT_LIST_JOIN_CANCEL_REQUEST, 538, 906, 90, 2, 290, 743, 199, 655, FetchConst.STATUS_DONE, 329, 49, IMediaPlayer.MEDIA_INFO_METADATA_UPDATE, 580, 355, 588, TsExtractor.TS_PACKET_SIZE, 462, 10, 134, 628, 320, 479, 130, 739, 71, 263, FetchService.ACTION_RETRY, 374, FetchConst.PRIORITY_HIGH, PsExtractor.AUDIO_STREAM, 605, ScriptIntrinsicBLAS.RIGHT, 673, 687, 234, 722, 384, 177, 752, 607, 640, 455, 193, 689, 707, 805, 641, 48, 60, 732, 621, 895, 544, 261, 852, 655, 309, 697, 755, 756, 60, 231, 773, 434, 421, 726, 528, 503, 118, 49, 795, 32, IjkMediaMeta.FF_PROFILE_H264_HIGH_444, 500, 238, 836, 394, 280, 566, FetchService.ACTION_REMOVE_ALL, 9, 647, 550, 73, 914, 342, 126, 32, 681, 331, 792, 620, 60, 609, 441, 180, 791, 893, 754, 605, 383, 228, 749, 760, ThirdPartyAccountBaseFragment.API_ERR_EMAIL, 54, 297, 134, 54, 834, RecentVisitorListFragment.ERROR_CODE_OWNER_IN_PRIVATE_MODE, 922, 191, 910, 532, 609, 829, PsExtractor.PRIVATE_STREAM_1, 20, 167, 29, 872, 449, 83, 402, 41, 656, 505, 579, FetchService.QUERY_ALL, 173, SharedVideoView.MEDIA_ERROR_FILE_NOT_EXISTS, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 688, 95, 497, 555, 642, 543, 307, 159, 924, 558, 648, 55, 497, 10}, new int[]{352, 77, 373, 504, 35, 599, 428, com.narvii.util.Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 409, 574, 118, 498, 285, 380, 350, 492, 197, 265, 920, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 914, RecentVisitorListFragment.ERROR_CODE_OWNER_IN_PRIVATE_MODE, 229, 643, 294, 871, 306, 88, 87, 193, 352, 781, 846, 75, 327, 520, 435, 543, NVPermission.REQ_SHARE_BUTTON_SAVE_STORY, 666, 249, 346, 781, 621, 640, 268, 794, 534, 539, 781, 408, 390, 644, 102, 476, 499, 290, 632, 545, 37, 858, 916, 552, 41, 542, 289, 122, 272, 383, 800, 485, 98, 752, 472, 761, 107, 784, 860, 658, 741, 290, 204, 681, 407, 855, 85, 99, 62, FetchService.QUERY_BY_STATUS, 180, 20, 297, 451, 593, 913, ScriptIntrinsicBLAS.RIGHT, 808, 684, 287, 536, 561, 76, 653, 899, 729, 567, 744, 390, 513, PsExtractor.AUDIO_STREAM, 516, BZip2Constants.MAX_ALPHA_SIZE, 240, 518, 794, 395, 768, 848, 51, 610, 384, 168, 190, 826, 328, 596, 786, 303, 570, 381, 415, 641, Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED, 237, Constants.ERR_PUBLISH_STREAM_CDN_ERROR, 429, 531, com.narvii.util.Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 676, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PLAY, 89, 168, 304, 402, 40, 708, 575, 162, 864, 229, 65, 861, 841, 512, 164, 477, 221, 92, 358, 785, 288, 357, 850, 836, 827, 736, 707, 94, 8, 494, 114, 521, 2, 499, 851, 543, Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT, 729, 771, 95, 248, 361, IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, FetchService.ACTION_ON_UPDATE_INTERVAL, 856, 797, 289, 51, 684, 466, 533, 820, 669, 45, 902, 452, 167, 342, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 173, 35, 463, 651, 51, 699, 591, 452, IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, 37, 124, 298, 332, 552, 43, 427, 119, 662, 777, 475, 850, 764, 364, IjkMediaMeta.FF_PROFILE_H264_CONSTRAINED_BASELINE, 911, 283, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PAUSED, 472, UnixStat.DEFAULT_FILE_PERM, 245, 288, 594, 394, UnixStat.DEFAULT_LINK_PERM, 327, 589, 777, 699, 688, 43, 408, 842, 383, 721, 521, 560, 644, Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_ERROR, 559, 62, 145, 873, 663, 713, 159, 672, 729, 624, 59, 193, 417, 158, 209, 563, 564, 343, 693, 109, 608, 563, 365, 181, 772, 677, FetchService.ACTION_ENQUEUE, 248, 353, 708, 410, 579, 870, 617, 841, 632, 860, 289, 536, 35, 777, 618, 586, 424, 833, 77, 597, 346, 269, 757, 632, 695, 751, 331, 247, 184, 45, 787, 680, 18, 66, 407, 369, 54, 492, 228, 613, 830, 922, 437, 519, 644, FetchConst.STATUS_REMOVED, 789, UnixStat.DEFAULT_FILE_PERM, 305, 441, com.narvii.util.Constants.ADMIN_SET_USER_MEMBERSHIP_TITLE, 300, 892, 827, ScriptIntrinsicBLAS.LEFT, 537, 381, 662, 513, 56, 252, 341, 242, 797, 838, 837, 720, 224, 307, 631, 61, 87, 560, FetchService.ACTION_ENQUEUE, 756, 665, 397, 808, 851, 309, 473, 795, 378, 31, 647, 915, 459, MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_EXCEED_QUOTA, 590, 731, 425, 216, 548, 249, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 881, 699, 535, 673, 782, 210, 815, FetchConst.STATUS_REMOVED, 303, 843, 922, 281, 73, 469, 791, 660, 162, 498, 308, Constants.ERR_PUBLISH_STREAM_NOT_FOUND, 422, 907, 817, 187, 62, 16, 425, 535, 336, 286, 437, 375, 273, 610, 296, 183, 923, 116, 667, 751, 353, 62, 366, 691, 379, 687, 842, 37, 357, 720, 742, 330, 5, 39, 923, FetchService.ACTION_PAUSE, 424, 242, 749, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 54, 669, FetchService.ACTION_QUERY, 342, RecentVisitorListFragment.ERROR_CODE_OWNER_IN_PRIVATE_MODE, 534, 105, 667, 488, 640, 672, 576, 540, FetchService.ACTION_QUERY, 486, 721, 610, 46, 656, 447, 171, 616, 464, 190, 531, 297, FetchService.ACTION_CONCURRENT_DOWNLOADS_LIMIT, 762, 752, 533, 175, 134, 14, 381, 433, 717, 45, 111, 20, 596, 284, 736, 138, 646, 411, 877, 669, ScriptIntrinsicBLAS.LEFT, 919, 45, 780, 407, 164, 332, 899, 165, 726, 600, FetchService.ACTION_REMOVE_REQUEST_ALL, 498, 655, 357, 752, 768, 223, 849, 647, 63, FetchService.ACTION_ENQUEUE, 863, ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD, 366, 304, 282, 738, 675, 410, 389, IjkMediaMeta.FF_PROFILE_H264_HIGH_444_PREDICTIVE, 31, 121, 303, 263}};

    static int getErrorCorrectionCodewordCount(int i) {
        if (i < 0 || i > 8) {
            throw new IllegalArgumentException("Error correction level must be between 0 and 8!");
        }
        return 1 << (i + 1);
    }

    static String generateErrorCorrection(CharSequence charSequence, int i) {
        int errorCorrectionCodewordCount = getErrorCorrectionCodewordCount(i);
        char[] cArr = new char[errorCorrectionCodewordCount];
        int length = charSequence.length();
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = errorCorrectionCodewordCount - 1;
            int iCharAt = (charSequence.charAt(i2) + cArr[i3]) % 929;
            while (i3 > 0) {
                cArr[i3] = (char) ((cArr[i3 - 1] + (929 - ((EC_COEFFICIENTS[i][i3] * iCharAt) % 929))) % 929);
                i3--;
            }
            cArr[0] = (char) ((929 - ((iCharAt * EC_COEFFICIENTS[i][0]) % 929)) % 929);
        }
        StringBuilder sb = new StringBuilder(errorCorrectionCodewordCount);
        for (int i4 = errorCorrectionCodewordCount - 1; i4 >= 0; i4--) {
            if (cArr[i4] != 0) {
                cArr[i4] = (char) (929 - cArr[i4]);
            }
            sb.append(cArr[i4]);
        }
        return sb.toString();
    }
}
