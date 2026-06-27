package com.narvii.flag.resolve;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVActivity;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.chat.RequestChatUserHelper;
import com.narvii.flag.model.Flag;
import com.narvii.model.Blog;
import com.narvii.model.NVObject;
import com.narvii.model.QuizQuestion;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.BlogResponse;
import com.narvii.modulization.entry.EntryManager;
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
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
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

    public static FlagResolveBar attachFlagMode(View view, NVContext nVContext) {
        if (view == null) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id._frame_layout_root);
        if (viewGroup == null) {
            viewGroup = (ViewGroup) view.findViewById(R.id.list_frame);
        }
        return attachFlagModeForCertainView(viewGroup, nVContext);
    }

    public static FlagResolveBar attachFlagModeForCertainView(ViewGroup viewGroup, NVContext nVContext) {
        if (viewGroup != null && nVContext != null) {
            NVFragment nVFragment = (NVFragment) nVContext;
            if (ParamUtils.getBooleanParam((Fragment) nVFragment, KEY_FLAG_MODE, true)) {
                Flag flag = (Flag) JacksonUtils.readAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM), Flag.class);
                ArrayList listAs = JacksonUtils.readListAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEMS), Flag.class);
                FlagResolveBar flagResolveBar = new FlagResolveBar(nVContext, flag, listAs, ParamUtils.getIntParam(nVFragment, KEY_FLAG_SIZE, listAs == null ? 0 : listAs.size()), ParamUtils.getStringParam(nVFragment, KEY_FLAG_FILTER), ParamUtils.getStringParam(nVFragment, KEY_FLAG_STOP_TIME));
                viewGroup.addView(flagResolveBar);
                View viewFindViewById = viewGroup.findViewById(android.R.id.list);
                if (viewFindViewById != null) {
                    ((ViewGroup.MarginLayoutParams) viewFindViewById.getLayoutParams()).bottomMargin = nVContext.getContext().getResources().getDimensionPixelSize(R.dimen.flag_action_bar_height) + nVContext.getContext().getResources().getDimensionPixelSize(R.dimen.flag_tag_bar_height);
                }
                flagResolveBar.startAnimation(AnimationUtils.loadAnimation(nVContext.getContext(), R.anim.slide_up_animation));
                return flagResolveBar;
            }
            String str = nVFragment.getString(R.string.flag_resolved_lowercap) + " " + DateTimeFormatter.getInstance(nVContext.getContext()).format(((Flag) JacksonUtils.readAs(ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM), Flag.class)).lastResolvedTime);
            LayoutInflater.from(nVContext.getContext()).inflate(R.layout.flag_resolve_bar_resolved, viewGroup, true);
            ((TextView) viewGroup.findViewById(R.id.resolved_time)).setText(str);
        }
        return null;
    }

    public static void launchFlagMode(NVContext nVContext, Flag flag, List<Flag> list, int i, String str, String str2) {
        launchFlagMode(nVContext, flag, list, i, str, str2, null);
    }

    public static void launchFlagMode(NVContext nVContext, Flag flag, List<Flag> list, int i, String str, String str2, NVActivity nVActivity) {
        Class cls;
        int i2 = flag.objectType;
        if (i2 == 1) {
            cls = BlogDetailFlagModeFragment.class;
        } else if (i2 == 2) {
            cls = ItemDetailFlagModeFragment.class;
        } else if (i2 == 3) {
            cls = CommentResolveFragment.class;
        } else if (i2 == 7) {
            cls = ChatMessageDetailFlagModeFragment.class;
        } else if (i2 == 0) {
            cls = UserProfileFlagModeFragment.class;
        } else if (i2 == 109) {
            cls = SharedPhotoDetailFlagModeFragment.class;
        } else if (i2 == 12) {
            cls = ThreadDetailFlagModeFragment.class;
        } else {
            if (i2 == 23 && flag.parentType == 1) {
                launchQuizQuestion(nVContext, flag, list, i, str, str2);
                return;
            }
            cls = null;
        }
        if (cls != null) {
            Intent intent = FragmentWrapperActivity.intent(cls);
            intent.putExtra("Source", "Flag Center");
            intent.putExtra("showListEntry", true);
            try {
                nVContext.startActivity(generateFlagIntent(intent, flag, list, i, str, str2));
                if (nVContext instanceof NVFragment) {
                    ((NVFragment) nVContext).getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
                }
            } catch (Exception unused) {
            }
        }
        if (nVActivity != null) {
            nVActivity.finish();
        }
    }

    public static void showNotAvailableDialog(Context context, int i) {
        AlertDialog alertDialog = new AlertDialog(context);
        alertDialog.setTitle(context.getString(R.string.not_available));
        alertDialog.setMessage(context.getString(i));
        alertDialog.addButton(context.getString(android.R.string.ok), 4, (View.OnClickListener) null);
        alertDialog.show();
    }

    public static void saveInstanceStats(NVContext nVContext, Bundle bundle) {
        NVFragment nVFragment = (NVFragment) nVContext;
        bundle.putString(KEY_FLAG_ITEM, ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEM));
        bundle.putString(KEY_FLAG_ITEMS, ParamUtils.getStringParam(nVFragment, KEY_FLAG_ITEMS));
        bundle.putInt(KEY_FLAG_SIZE, ParamUtils.getIntParam(nVFragment, KEY_FLAG_SIZE, 0));
        bundle.putString(KEY_FLAG_FILTER, ParamUtils.getStringParam(nVFragment, KEY_FLAG_FILTER));
        bundle.putString(KEY_FLAG_STOP_TIME, ParamUtils.getStringParam(nVFragment, KEY_FLAG_STOP_TIME));
    }

    public static void handleActivityResult(final NVContext nVContext, FlagResolveBar flagResolveBar, int i, int i2, Intent intent, NVObject nVObject, int i3) {
        if (i != 301) {
            if (i == 302 && i2 == 0 && flagResolveBar != null) {
                flagResolveBar.loadNextFlag();
                return;
            }
            return;
        }
        if (i2 == -1) {
            new RequestChatUserHelper(nVContext).request(nVObject, i3, intent.getStringExtra(FLAG_RESOLVE_BACK), new Callback<Intent>() { // from class: com.narvii.flag.resolve.FlagModeHelper.1
                @Override // com.narvii.util.Callback
                public void call(Intent intent2) {
                    intent2.putExtra("showStrike", true);
                    ((NVFragment) nVContext).startActivityForResult(intent2, 302);
                }
            });
        } else {
            if (i2 != 0 || flagResolveBar == null) {
                return;
            }
            flagResolveBar.loadNextFlag();
        }
    }

    private static void launchQuizQuestion(final NVContext nVContext, final Flag flag, final List<Flag> list, final int i, final String str, final String str2) {
        if (flag == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(nVContext.getContext(), BlogResponse.class);
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.flag.resolve.FlagModeHelper.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Blog blog = ((BlogResponse) apiResponse).blog;
                if (blog == null) {
                    return;
                }
                Intent intent = FragmentWrapperActivity.intent(QuizzesQuestionFlagModeFragment.class);
                intent.putExtra(EntryManager.ENTRY_QUEATION, JacksonUtils.writeAsString(FlagModeHelper.findQuizQuestionById(blog.quizQuestionList, flag.objectId)));
                intent.putExtra("flagMode", true);
                intent.putExtra(EntryManager.ENTRY_QUIZZES, JacksonUtils.writeAsString(blog));
                try {
                    nVContext.startActivity(FlagModeHelper.generateFlagIntent(intent, flag, list, i, str, str2));
                    if (nVContext instanceof NVFragment) {
                        ((NVFragment) nVContext).getActivity().overridePendingTransition(R.anim.slide_in_right, R.anim.slide_out_left);
                    }
                } catch (Exception unused) {
                }
            }
        };
        progressDialog.show();
        ((ApiService) nVContext.getService("api")).exec(ApiRequest.builder().path("/blog/" + flag.parentId).build(), progressDialog.dismissListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Intent generateFlagIntent(Intent intent, Flag flag, List<Flag> list, int i, String str, String str2) {
        if (intent == null) {
            return null;
        }
        intent.putExtra("id", flag.objectId);
        intent.putExtra(KEY_FLAG_ITEM, JacksonUtils.writeAsString(flag));
        intent.putExtra(KEY_FLAG_MODE, str == null || !str.equals("resolved"));
        intent.putExtra(KEY_FLAG_ITEMS, JacksonUtils.writeAsString(list));
        intent.putExtra(KEY_FLAG_SIZE, i);
        intent.putExtra(KEY_FLAG_FILTER, str);
        intent.putExtra(KEY_FLAG_STOP_TIME, str2);
        return intent;
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
}
