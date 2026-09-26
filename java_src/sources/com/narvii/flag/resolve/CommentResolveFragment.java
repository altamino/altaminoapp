package com.narvii.flag.resolve;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import com.google.firebase.sessions.settings.c;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.flag.model.Flag;
import com.narvii.model.Comment;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.model.api.CommentResponse;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.StringUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import com.narvii.util.text.DefaultTagClickListener;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.NicknameView;
import com.safedk.android.utils.Logger;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class CommentResolveFragment extends NVFragment implements View.OnClickListener, FlagResolveBar.FlagAttachObject {
    private View btnSeeAll;
    private Comment comment;
    private CommentResponse commentResponse;
    private View contentContainer;
    private DateTimeFormatter datetime;
    private EmojioneView emojioneView;
    private String error;
    private View errorContaienr;
    private FlagResolveBar flagResolveBar;
    private Flag mFlag;
    private NicknameView nicknameView;
    private View progress;
    private StickerImageView stickerImageView;
    private TextView tvContent;
    private TextView tvDate;
    private TextView tvError;

    private class CommentTagClickListener extends DefaultTagClickListener {
        public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        private CommentTagClickListener() {
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(CommentResolveFragment.this, intent);
        }
    }

    public static void safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(Fragment p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.comment;
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Comment configFakeDeletedComment() {
        Comment comment = new Comment();
        comment.author = new User();
        comment.content = getString(R.string.comment_not_existed);
        this.btnSeeAll.setBackgroundDrawable(getResources().getDrawable(R.drawable.button_round_gray));
        this.btnSeeAll.setClickable(false);
        Flag flag = this.mFlag;
        comment.parentId = flag.parentId;
        comment.parentType = flag.parentType;
        comment.commentId = flag.objectId;
        return comment;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateViews() {
        this.progress.setVisibility((this.commentResponse == null && this.error == null) ? 0 : 8);
        this.errorContaienr.setVisibility(this.error != null ? 0 : 8);
        this.contentContainer.setVisibility(this.commentResponse != null ? 0 : 8);
        Comment comment = this.comment;
        if (comment != null) {
            this.nicknameView.setUser(comment.author);
            this.tvContent.setText(this.comment.content);
            Sticker commentSticker = this.comment.getCommentSticker();
            if (commentSticker == null) {
                this.stickerImageView.setVisibility(8);
                this.emojioneView.setVisibility(8);
            } else if (commentSticker.isLocalMood()) {
                this.emojioneView.setVisibility(0);
                this.stickerImageView.setVisibility(8);
                String str = commentSticker.icon;
                this.emojioneView.setEmoji(new String(StringUtils.hex2bytes(str == null ? null : str.substring(15))));
            } else {
                this.stickerImageView.setVisibility(0);
                this.emojioneView.setVisibility(8);
                this.stickerImageView.setSticker(commentSticker);
            }
            this.tvDate.setText(this.datetime.format(this.comment.modifiedTime));
        }
        TextView textView = this.tvError;
        if (textView != null) {
            textView.setText(this.error);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i10, i11, intent, this.comment, 3);
        super.onActivityResult(i10, i11, intent);
    }

    private void queryCommentInfo() {
        boolean zIsGlobalInteractionScope = isGlobalInteractionScope();
        Flag flag = this.mFlag;
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path(CommentHelper.getBaseCommentPath(zIsGlobalInteractionScope, flag.parentType, flag.parentId, flag.objectId)).build(), new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.flag.resolve.CommentResolveFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommentResponse commentResponse) throws Exception {
                super.onFinish(apiRequest, commentResponse);
                CommentResolveFragment.this.commentResponse = commentResponse;
                CommentResolveFragment.this.comment = commentResponse.comment;
                CommentResolveFragment.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i10, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i10, list, str, apiResponse, th);
                if (i10 != 700) {
                    CommentResolveFragment.this.error = str;
                } else {
                    if (CommentResolveFragment.this.flagResolveBar != null) {
                        CommentResolveFragment.this.flagResolveBar.showAlreadyResolved();
                    }
                    CommentResolveFragment commentResolveFragment = CommentResolveFragment.this;
                    commentResolveFragment.comment = commentResolveFragment.configFakeDeletedComment();
                    CommentResolveFragment.this.commentResponse = new CommentResponse();
                    CommentResolveFragment.this.commentResponse.comment = CommentResolveFragment.this.comment;
                    CommentResolveFragment.this.updateViews();
                }
                CommentResolveFragment.this.updateViews();
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.comment_see_all) {
            if (id == R.id.nickname) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://user-profile/" + this.mFlag.objectUser.id()));
                try {
                    safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent);
                    return;
                } catch (Exception e) {
                    Log.e("unable to open " + intent.getDataString(), e);
                    return;
                }
            }
            return;
        }
        String str = "ndc://" + NVObject.objectTypeName(this.mFlag.parentType) + c.FORWARD_SLASH_STRING + this.mFlag.parentId;
        if (this.mFlag.parentType == 0) {
            str = "ndc://" + NVObject.objectTypeName(this.mFlag.parentType) + c.FORWARD_SLASH_STRING + this.mFlag.parentId + "/comment";
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
        try {
            safedk_Fragment_startActivity_d519b2d71bdac81b1d20f350086c68e6(this, intent2);
        } catch (Exception e2) {
            Log.e("unable to open " + intent2.getDataString(), e2);
        }
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFlag = (Flag) JacksonUtils.readAs(getStringParam("flag_item"), Flag.class);
        this.datetime = DateTimeFormatter.getInstance(getContext());
        setTitle(R.string.comment);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_comment_layout, viewGroup, false);
        FlagResolveBar flagResolveBarAttachFlagMode = FlagModeHelper.attachFlagMode(viewInflate, this);
        this.flagResolveBar = flagResolveBarAttachFlagMode;
        if (flagResolveBarAttachFlagMode != null) {
            flagResolveBarAttachFlagMode.setLeftText(getString(R.string.delete));
        }
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        NicknameView nicknameView = (NicknameView) view.findViewById(R.id.nickname);
        this.nicknameView = nicknameView;
        nicknameView.setOnClickListener(this);
        this.tvContent = (TextView) view.findViewById(R.id.comment_content);
        this.tvDate = (TextView) view.findViewById(R.id.comment_time);
        this.stickerImageView = (StickerImageView) view.findViewById(R.id.sticker_image);
        this.emojioneView = (EmojioneView) view.findViewById(R.id.emoji_sticker);
        View viewFindViewById = view.findViewById(R.id.comment_see_all);
        this.btnSeeAll = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.contentContainer = view.findViewById(R.id.content_container);
        this.errorContaienr = view.findViewById(R.id.error_container);
        this.progress = view.findViewById(android.R.id.progress);
        this.tvError = (TextView) view.findViewById(R.id.text);
        updateViews();
        queryCommentInfo();
    }
}
