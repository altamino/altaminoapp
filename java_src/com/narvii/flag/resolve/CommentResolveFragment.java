package com.narvii.flag.resolve;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.comment.CommentHelper;
import com.narvii.flag.model.Flag;
import com.narvii.flag.resolve.FlagResolveBar;
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
import java.util.List;

/* loaded from: classes2.dex */
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

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mFlag = (Flag) JacksonUtils.readAs(getStringParam("flag_item"), Flag.class);
        this.datetime = DateTimeFormatter.getInstance(getContext());
        setTitle(R.string.comment);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.flag_resolve_comment_layout, viewGroup, false);
        this.flagResolveBar = FlagModeHelper.attachFlagMode(viewInflate, this);
        FlagResolveBar flagResolveBar = this.flagResolveBar;
        if (flagResolveBar != null) {
            flagResolveBar.setLeftText(getString(R.string.delete));
        }
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.nicknameView = (NicknameView) view.findViewById(R.id.nickname);
        this.nicknameView.setOnClickListener(this);
        this.tvContent = (TextView) view.findViewById(R.id.comment_content);
        this.tvDate = (TextView) view.findViewById(R.id.comment_time);
        this.stickerImageView = (StickerImageView) view.findViewById(R.id.sticker_image);
        this.emojioneView = (EmojioneView) view.findViewById(R.id.emoji_sticker);
        this.btnSeeAll = view.findViewById(R.id.comment_see_all);
        this.btnSeeAll.setOnClickListener(this);
        this.contentContainer = view.findViewById(R.id.content_container);
        this.errorContaienr = view.findViewById(R.id.error_container);
        this.progress = view.findViewById(android.R.id.progress);
        this.tvError = (TextView) view.findViewById(R.id.text);
        updateViews();
        queryCommentInfo();
    }

    private void queryCommentInfo() {
        boolean zIsGlobalInteractionScope = isGlobalInteractionScope();
        Flag flag = this.mFlag;
        ((ApiService) getService("api")).exec(new ApiRequest.Builder().path(CommentHelper.getBaseCommentPath(zIsGlobalInteractionScope, flag.parentType, flag.parentId, flag.objectId)).build(), new ApiResponseListener<CommentResponse>(CommentResponse.class) { // from class: com.narvii.flag.resolve.CommentResolveFragment.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, CommentResponse commentResponse) throws Exception {
                super.onFinish(apiRequest, (ApiRequest) commentResponse);
                CommentResolveFragment.this.commentResponse = commentResponse;
                CommentResolveFragment.this.comment = commentResponse.comment;
                CommentResolveFragment.this.updateViews();
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                super.onFail(apiRequest, i, list, str, apiResponse, th);
                if (i == 700) {
                    if (CommentResolveFragment.this.flagResolveBar != null) {
                        CommentResolveFragment.this.flagResolveBar.showAlreadyResolved();
                    }
                    CommentResolveFragment commentResolveFragment = CommentResolveFragment.this;
                    commentResolveFragment.comment = commentResolveFragment.configFakeDeletedComment();
                    CommentResolveFragment.this.commentResponse = new CommentResponse();
                    CommentResolveFragment.this.commentResponse.comment = CommentResolveFragment.this.comment;
                    CommentResolveFragment.this.updateViews();
                } else {
                    CommentResolveFragment.this.error = str;
                }
                CommentResolveFragment.this.updateViews();
            }
        });
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
            if (commentSticker != null) {
                if (commentSticker.isLocalMood()) {
                    this.emojioneView.setVisibility(0);
                    this.stickerImageView.setVisibility(8);
                    String str = commentSticker.icon;
                    this.emojioneView.setEmoji(new String(StringUtils.hex2bytes(str == null ? null : str.substring(15))));
                } else {
                    this.stickerImageView.setVisibility(0);
                    this.emojioneView.setVisibility(8);
                    this.stickerImageView.setSticker(commentSticker);
                }
            } else {
                this.stickerImageView.setVisibility(8);
                this.emojioneView.setVisibility(8);
            }
            this.tvDate.setText(this.datetime.format(this.comment.modifiedTime));
        }
        TextView textView = this.tvError;
        if (textView != null) {
            textView.setText(this.error);
        }
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

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id != R.id.comment_see_all) {
            if (id != R.id.nickname) {
                return;
            }
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("ndc://user-profile/" + this.mFlag.objectUser.id()));
            try {
                startActivity(intent);
                return;
            } catch (Exception e) {
                Log.e("unable to open " + intent.getDataString(), e);
                return;
            }
        }
        String str = "ndc://" + NVObject.objectTypeName(this.mFlag.parentType) + "/" + this.mFlag.parentId;
        if (this.mFlag.parentType == 0) {
            str = "ndc://" + NVObject.objectTypeName(this.mFlag.parentType) + "/" + this.mFlag.parentId + "/comment";
        }
        Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(str));
        try {
            startActivity(intent2);
        } catch (Exception e2) {
            Log.e("unable to open " + intent2.getDataString(), e2);
        }
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.comment;
    }

    private class CommentTagClickListener extends DefaultTagClickListener {
        private CommentTagClickListener() {
        }

        @Override // com.narvii.util.text.DefaultTagClickListener
        protected void startActivity(View view, Intent intent) {
            CommentResolveFragment.this.startActivity(intent);
        }
    }

    @Override // com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.comment, 3);
        super.onActivityResult(i, i2, intent);
    }
}
