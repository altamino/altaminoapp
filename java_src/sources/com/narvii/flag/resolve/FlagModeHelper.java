package com.narvii.flag.resolve;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.RequestChatUserHelper;
import com.narvii.flag.model.Flag;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.model.QuizQuestion;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.sharedfolder.SharedPhotoDetailFlagModeFragment;
import com.narvii.util.Callback;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.AlertDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class FlagModeHelper {
    public static final String FLAG_RESOLVE_BACK = "template_content";
    public static final int FLAG_RESOLVE_REQUEST = 100;
    private static final String KEY_FLAG_FILTER = "flag_filter";
    private static final String KEY_FLAG_ID = "id";
    private static final String KEY_FLAG_ITEM = "flag_item";
    private static final String KEY_FLAG_ITEMS = "flag_items";
    private static final String KEY_FLAG_MODE = "flag_mode";
    private static final String KEY_FLAG_SIZE = "flag_size";
    private static final String KEY_FLAG_STOP_TIME = "stoptime";
    public static final int REQ_CHAT = 302;
    public static final int REQ_TEMPLE = 301;

    public static FlagResolveBar attachFlagModeForCertainView(ViewGroup viewGroup, NVContext nVContext) {
        if (viewGroup != null && nVContext != null) {
            NVFragment nVFragment = (NVFragment) nVContext;
            if (ParamUtils.getBooleanParam((Fragment) nVFragment, KEY_FLAG_MODE, true)) {
                Flag flag = (Flag) JacksonUtils.readAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM), Flag.class);
                ArrayList listAs = JacksonUtils.readListAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEMS), Flag.class);
                FlagResolveBar flagResolveBar = new FlagResolveBar(nVContext, flag, listAs, ParamUtils.getIntParam(nVFragment, KEY_FLAG_SIZE, listAs == null ? 0 : listAs.size()), ParamUtils.getStringParam(nVFragment, KEY_FLAG_FILTER), ParamUtils.getStringParam(nVFragment, KEY_FLAG_STOP_TIME));
                viewGroup.addView(flagResolveBar);
                View viewFindViewById = viewGroup.findViewById(R.id.list);
                if (viewFindViewById != null) {
                    ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).bottomMargin = nVContext.getContext().getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.flag_action_bar_height) + nVContext.getContext().getResources().getDimensionPixelSize(com.narvii.amino.master.R.dimen.flag_tag_bar_height);
                }
                flagResolveBar.startAnimation(AnimationUtils.loadAnimation(nVContext.getContext(), com.narvii.amino.master.R.anim.slide_up_animation));
                return flagResolveBar;
            }
            String str = nVFragment.getString(com.narvii.amino.master.R.string.flag_resolved_lowercap) + " " + DateTimeFormatter.getInstance(nVContext.getContext()).format(((Flag) JacksonUtils.readAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM), Flag.class)).lastResolvedTime);
            LayoutInflater.from(nVContext.getContext()).inflate(com.narvii.amino.master.R.layout.flag_resolve_bar_resolved, viewGroup, true);
            ((TextView) viewGroup.findViewById(com.narvii.amino.master.R.id.resolved_time)).setText(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static QuizQuestion findQuizQuestionById(List<QuizQuestion> list, String str) {
        if (list != null && !TextUtils.isEmpty(str)) {
            for (QuizQuestion quizQuestion : list) {
                if (Utils.isEqualsNotNull(quizQuestion.id(), str)) {
                    return quizQuestion;
                }
            }
        }
        return null;
    }

    public static void launchFlagMode(NVContext nVContext, Flag flag, List<Flag> list, int i10, String str, String str2) {
        launchFlagMode(nVContext, flag, list, i10, str, str2, null);
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public static FlagResolveBar attachFlagMode(View view, NVContext nVContext) {
        if (view == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(com.narvii.amino.master.R.id._frame_layout_root);
        if (viewGroup == null) {
            viewGroup = (ViewGroup) view.findViewById(com.narvii.amino.master.R.id.list_frame);
        }
        return attachFlagModeForCertainView(viewGroup, nVContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent generateFlagIntent(Intent intent, Flag flag, List<Flag> list, int i10, String str, String str2) {
        if (intent == null) {
            return null;
        }
        intent.putExtra("id", flag.objectId);
        intent.putExtra(KEY_FLAG_ITEM, JacksonUtils.writeAsString(flag));
        intent.putExtra(KEY_FLAG_MODE, str == null || !str.equals("resolved"));
        intent.putExtra(KEY_FLAG_ITEMS, JacksonUtils.writeAsString(list));
        intent.putExtra(KEY_FLAG_SIZE, i10);
        intent.putExtra(KEY_FLAG_FILTER, str);
        intent.putExtra(KEY_FLAG_STOP_TIME, str2);
        return intent;
    }

    public static void handleActivityResult(final NVContext nVContext, FlagResolveBar flagResolveBar, int i10, int i11, Intent intent, NVObject nVObject, int i12) {
        if (i10 != 301) {
            if (i10 == 302 && i11 == 0 && flagResolveBar != null) {
                flagResolveBar.loadNextFlag();
                return;
            }
            return;
        }
        if (i11 == -1) {
            new RequestChatUserHelper(nVContext).request(nVObject, i12, intent.getStringExtra(FLAG_RESOLVE_BACK), new Callback<Intent>() { // from class: com.narvii.flag.resolve.FlagModeHelper.1
                public static void safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1(Fragment p0, Intent p1, int p5) {
                    Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V");
                    if (p1 == null) {
                        return;
                    }
                    p0.startActivityForResult(p1, p5);
                }

                @Override // com.narvii.util.Callback
                public void call(Intent intent2) {
                    intent2.putExtra("showStrike", true);
                    safedk_Fragment_startActivityForResult_6fd6bf7695baae8f1a141a4d4340bbe1((NVFragment) nVContext, intent2, 302);
                }
            });
        } else {
            if (i11 != 0 || flagResolveBar == null) {
                return;
            }
            flagResolveBar.loadNextFlag();
        }
    }

    public static void launchFlagMode(NVContext nVContext, Flag flag, List<Flag> list, int i10, String str, String str2, NVActivity nVActivity) {
        Class cls;
        int i11 = flag.objectType;
        if (i11 == 1) {
            cls = BlogDetailFlagModeFragment.class;
        } else if (i11 == 2) {
            cls = ItemDetailFlagModeFragment.class;
        } else if (i11 == 3) {
            cls = CommentResolveFragment.class;
        } else if (i11 == 7) {
            cls = ChatMessageDetailFlagModeFragment.class;
        } else if (i11 == 0) {
            cls = UserProfileFlagModeFragment.class;
        } else if (i11 == 109) {
            cls = SharedPhotoDetailFlagModeFragment.class;
        } else if (i11 == 12) {
            cls = ThreadDetailFlagModeFragment.class;
        } else {
            if (i11 == 23 && flag.parentType == 1) {
                launchQuizQuestion(nVContext, flag, list, i10, str, str2);
                return;
            }
            cls = null;
        }
        if (cls != null) {
            Intent intent = FragmentWrapperActivity.intent(cls);
            intent.putExtra(ExternalPostPreviewFragment.SOURCE, "Flag Center");
            intent.putExtra("showListEntry", true);
            try {
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, generateFlagIntent(intent, flag, list, i10, str, str2));
                if (nVContext instanceof NVFragment) {
                    ((NVFragment) nVContext).getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.slide_in_right, com.narvii.amino.master.R.anim.slide_out_left);
                }
            } catch (Exception unused) {
            }
        }
        if (nVActivity != null) {
            nVActivity.finish();
        }
    }

    private static void launchQuizQuestion(final NVContext nVContext, final Flag flag, final List<Flag> list, final int i10, final String str, final String str2) {
        if (flag == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext(), BlogResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagModeHelper.2
            public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
                Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
                if (p1 == null) {
                    return;
                }
                p0.startActivity(p1);
            }

            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Blog blog = ((BlogResponse) apiResponse).blog;
                if (blog == null) {
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(QuizzesQuestionFlagModeFragment.class);
                intent.putExtra("question", JacksonUtils.writeAsString(FlagModeHelper.findQuizQuestionById(blog.quizQuestionList, flag.objectId)));
                intent.putExtra("flagMode", true);
                intent.putExtra("quiz", JacksonUtils.writeAsString(blog));
                try {
                    safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(nVContext, FlagModeHelper.generateFlagIntent(intent, flag, list, i10, str, str2));
                    NVContext nVContext2 = nVContext;
                    if (nVContext2 instanceof NVFragment) {
                        ((NVFragment) nVContext2).getActivity().overridePendingTransition(com.narvii.amino.master.R.anim.slide_in_right, com.narvii.amino.master.R.anim.slide_out_left);
                    }
                } catch (Exception unused) {
                }
            }
        };
        progressDialog.show();
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().path("/blog/" + flag.parentId).build(), progressDialog.dismissListener);
    }

    public static void saveInstanceStats(NVContext nVContext, Bundle bundle) {
        NVFragment nVFragment = (NVFragment) nVContext;
        bundle.putString(KEY_FLAG_ITEM, ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM));
        bundle.putString(KEY_FLAG_ITEMS, ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEMS));
        bundle.putInt(KEY_FLAG_SIZE, ParamUtils.getIntParam(nVFragment, KEY_FLAG_SIZE, 0));
        bundle.putString(KEY_FLAG_FILTER, ParamUtils.getStringParam(nVFragment, KEY_FLAG_FILTER));
        bundle.putString(KEY_FLAG_STOP_TIME, ParamUtils.getStringParam(nVFragment, KEY_FLAG_STOP_TIME));
    }

    public static void showNotAvailableDialog(Context context, int i10) {
        AlertDialog alertDialog = new AlertDialog(context);
        alertDialog.setTitle(context.getString(com.narvii.amino.master.R.string.not_available));
        alertDialog.setMessage(context.getString(i10));
        alertDialog.addButton(context.getString(R.string.ok), 4, (View.OnClickListener) null);
        alertDialog.show();
    }
}
