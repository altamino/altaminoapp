package com.narvii.comment;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.comment.list.CommentListAdapter;
import com.narvii.model.Comment;
import com.narvii.model.NVObject;
import com.narvii.model.Sticker;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.sticker.StickerBaseDetailFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;

/* JADX INFO: loaded from: classes4.dex */
public class CommentStickerDetailFragment extends StickerBaseDetailFragment {
    Comment comment;
    private CommentHelper commentHelper;

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected NVObject attachObject() {
        return this.comment;
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected boolean ignoreGlobalScope() {
        return true;
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected boolean isFromComment() {
        return true;
    }

    private void deleteComment() {
        if (this.comment == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext());
        builder.setMessage(R.string.dialog_delete_confirm);
        builder.setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() { // from class: com.narvii.comment.CommentStickerDetailFragment.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i10) {
                ProgressDialog progressDialog = new ProgressDialog(CommentStickerDetailFragment.this.getContext());
                progressDialog.show();
                progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.comment.CommentStickerDetailFragment.1.1
                    @Override // com.narvii.util.Callback
                    public void call(ApiResponse apiResponse) {
                        CommentStickerDetailFragment.this.getActivity().finish();
                    }
                };
                CommentStickerDetailFragment.this.commentHelper.sendDeleteCommentRequest(CommentStickerDetailFragment.this.comment, progressDialog.dismissListener);
            }
        });
        builder.setNegativeButton(android.R.string.no, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
        builder.show();
    }

    private void finishWithResult() {
        String str;
        Intent intent = new Intent();
        Sticker sticker = this.sticker;
        if (sticker == null || (str = sticker.stickerCollectionId) == null) {
            str = "default";
        }
        intent.putExtra("collectionId", str);
        setResult(-1, intent);
        finish();
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected boolean isMyOwned() {
        AccountService accountService = (AccountService) getService("account");
        Comment comment = this.comment;
        return Utils.isEqualsNotNull(comment == null ? null : comment.uid(), accountService.hasAccount() ? accountService.getUserId() : null);
    }

    @Override // com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onActivityResult(int i10, int i11, Intent intent) {
        if (i10 == 102 && i11 == -1) {
            finishWithResult();
        }
        super.onActivityResult(i10, i11, intent);
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.comment = (Comment) JacksonUtils.readAs(getStringParam(CommentListAdapter.COMMENT), Comment.class);
        this.commentHelper = new CommentHelper(this, isGlobalInteractionScope());
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected void onDeleteOpClicked() {
        super.onDeleteOpClicked();
        deleteComment();
    }

    @Override // com.narvii.monetization.sticker.StickerBaseDetailFragment
    protected void useSticker() {
        super.useSticker();
        finishWithResult();
    }
}
