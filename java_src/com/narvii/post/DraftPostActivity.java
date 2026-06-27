package com.narvii.post;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.influencer.FansOnlyPost;
import com.narvii.influencer.InfluencerPostIndicator;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.post.PostObject;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;

/* loaded from: classes3.dex */
public abstract class DraftPostActivity<T extends PostObject> extends BasePostActivity<T> {
    private AccountService accountService;
    private final Runnable autoSaveDraft = new Runnable() { // from class: com.narvii.post.DraftPostActivity.4
        @Override // java.lang.Runnable
        public void run() {
            if (DraftPostActivity.this.isDestoryed()) {
                return;
            }
            DraftPostActivity.this.saveDraft();
            if (DraftPostActivity.this.autoSaveDraftInterval() > 0) {
                Utils.postDelayed(this, DraftPostActivity.this.autoSaveDraftInterval());
            }
        }
    };
    protected String draftId;
    protected DraftManager draftManager;
    private boolean fromDraft;
    private boolean isFansOnlyBefore;
    protected boolean isPosted;
    protected ObjectNode params;
    protected T post;
    private boolean promptDraftSaved;

    protected int autoSaveDraftInterval() {
        return 10000;
    }

    public abstract ObjectNode buildDraftParams();

    public abstract String draftType();

    protected View getInfluencerLockLayout() {
        return null;
    }

    protected void onDraftDeleted(String str) {
    }

    protected void onDraftSavedSuccess(T t) {
    }

    protected boolean saveUnpostedDraftInFinish() {
        return false;
    }

    protected boolean shouldShowFansOnlySwitchDialog() {
        return true;
    }

    protected boolean showFansOnlyLabel() {
        return true;
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ObjectNode objectNodeCreateObjectNode;
        super.onCreate(bundle);
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
        this.accountService = (AccountService) getService("account");
        if (bundle == null) {
            this.draftId = getStringParam("draftId");
            String str = this.draftId;
            if (str == null) {
                this.post = (T) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
                return;
            }
            DraftInfo info = this.draftManager.getInfo(str);
            if (info == null || (objectNodeCreateObjectNode = info.params) == null) {
                objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
            }
            this.params = objectNodeCreateObjectNode;
            this.post = (T) this.draftManager.readPost(this.draftId, postClazz());
            return;
        }
        this.draftId = bundle.getString("draftId");
        this.params = JacksonUtils.createObjectNode(bundle.getString("params"));
        if (bundle.getBoolean("_containsPost")) {
            this.post = (T) JacksonUtils.readAs(bundle.getString(Module.MODULE_POSTS), postClazz());
        } else {
            String str2 = this.draftId;
            if (str2 != null) {
                this.post = (T) this.draftManager.readPost(str2, postClazz());
            }
        }
        this.promptDraftSaved = bundle.getBoolean("promptDraftSaved");
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        T t = this.post;
        if (t == null) {
            this.isPosted = true;
            finish();
            return;
        }
        if (this.draftId == null) {
            this.fromDraft = false;
            final ObjectNode objectNodeBuildDraftParams = buildDraftParams();
            final DraftInfo reusableDraft = getReusableDraft(objectNodeBuildDraftParams);
            if (reusableDraft == null) {
                this.params = objectNodeBuildDraftParams == null ? JacksonUtils.createObjectNode() : objectNodeBuildDraftParams;
                this.draftId = this.draftManager.createDraft(draftType(), objectNodeBuildDraftParams, this.post);
                updateView(this.post);
                onPostLoaded(this.post);
            } else {
                final PostObject postObject = (PostObject) JacksonUtils.readAs(JacksonUtils.writeAsString(this.post), postClazz());
                final PostObject post = this.draftManager.readPost(reusableDraft.id, postClazz());
                ObjectNode objectNodeCreateObjectNode = reusableDraft.params;
                if (objectNodeCreateObjectNode == null) {
                    objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                }
                this.params = objectNodeCreateObjectNode;
                updateView(post);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(R.string.post_draft_restore_draft_msg);
                builder.setPositiveButton(R.string.post_draft_restore, new DialogInterface.OnClickListener() { // from class: com.narvii.post.DraftPostActivity.1
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) throws Throwable {
                        ObjectNode objectNodeCreateObjectNode2;
                        DraftPostActivity draftPostActivity = DraftPostActivity.this;
                        String str = reusableDraft.id;
                        draftPostActivity.draftId = str;
                        DraftInfo info = draftPostActivity.draftManager.getInfo(str);
                        DraftPostActivity draftPostActivity2 = DraftPostActivity.this;
                        if (info == null || (objectNodeCreateObjectNode2 = info.params) == null) {
                            objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                        }
                        draftPostActivity2.params = objectNodeCreateObjectNode2;
                        DraftPostActivity draftPostActivity3 = DraftPostActivity.this;
                        draftPostActivity3.post = (T) post;
                        draftPostActivity3.updateView(draftPostActivity3.post);
                        DraftPostActivity draftPostActivity4 = DraftPostActivity.this;
                        draftPostActivity4.onPostLoaded(draftPostActivity4.post);
                    }
                });
                builder.setNeutralButton(R.string.post_draft_discard, new DialogInterface.OnClickListener() { // from class: com.narvii.post.DraftPostActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i) {
                        DraftPostActivity.this.deleteReusableDrafts(objectNodeBuildDraftParams);
                        if (!Utils.isStringEquals(JacksonUtils.writeAsString(DraftPostActivity.this.post), JacksonUtils.writeAsString(postObject))) {
                            Log.e(DraftPostActivity.this.getClass().getSimpleName() + ".savePost() before post loaded");
                        }
                        DraftPostActivity draftPostActivity = DraftPostActivity.this;
                        draftPostActivity.params = objectNodeBuildDraftParams;
                        draftPostActivity.post = (T) postObject;
                        DraftManager draftManager = draftPostActivity.draftManager;
                        String strDraftType = draftPostActivity.draftType();
                        DraftPostActivity draftPostActivity2 = DraftPostActivity.this;
                        draftPostActivity.draftId = draftManager.createDraft(strDraftType, draftPostActivity2.params, draftPostActivity2.post);
                        DraftPostActivity draftPostActivity3 = DraftPostActivity.this;
                        draftPostActivity3.updateView(draftPostActivity3.post);
                        DraftPostActivity draftPostActivity4 = DraftPostActivity.this;
                        draftPostActivity4.onPostLoaded(draftPostActivity4.post);
                    }
                });
                builder.setNegativeButton(R.string.cancel, Utils.DIALOG_BUTTON_EMPTY_LISTENER);
                builder.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.post.DraftPostActivity.3
                    @Override // android.content.DialogInterface.OnCancelListener
                    public void onCancel(DialogInterface dialogInterface) {
                        DraftPostActivity.this.finish();
                    }
                });
                builder.show().setCanceledOnTouchOutside(false);
            }
        } else {
            this.fromDraft = true;
            updateView(t);
            onPostLoaded(this.post);
        }
        updateInfluencerView();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.support.v4.app.SupportActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString("draftId", this.draftId);
        ObjectNode objectNode = this.params;
        bundle.putString("params", objectNode == null ? null : objectNode.toString());
        String strWriteAsString = JacksonUtils.writeAsString(this.post);
        if (strWriteAsString != null && strWriteAsString.length() < 150000) {
            bundle.putString(Module.MODULE_POSTS, strWriteAsString);
            bundle.putBoolean("_containsPost", true);
        }
        bundle.putBoolean("promptDraftSaved", this.promptDraftSaved);
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        saveDraft();
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.draftId != null && autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
        String str = this.draftId;
        if (str == null || this.draftManager.getDir(str).isDirectory()) {
            return;
        }
        this.draftId = null;
        finish();
    }

    @Override // com.narvii.app.NVActivity, android.support.v4.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Utils.handler.removeCallbacks(this.autoSaveDraft);
    }

    @Override // com.narvii.app.NVActivity, android.app.Activity
    public void finish() {
        String str;
        super.finish();
        if (this.isPosted && (str = this.draftId) != null) {
            deleteDraft(str);
            deleteReusableDrafts(this.params);
            return;
        }
        if (getStringParam("draftId") != null || this.draftId == null || saveUnpostedDraftInFinish()) {
            return;
        }
        T tSavePost = savePost();
        if (tSavePost == null || tSavePost.isEmpty()) {
            deleteDraft(this.draftId);
            this.discardDraft = true;
            return;
        }
        PostObject postObject = (PostObject) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
        if (postObject == null || !tSavePost.isSame(postObject)) {
            return;
        }
        deleteDraft(this.draftId);
        this.discardDraft = true;
    }

    private void deleteDraft(String str) {
        DraftManager draftManager = this.draftManager;
        if (draftManager == null) {
            return;
        }
        draftManager.deleteDraft(str);
        onDraftDeleted(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int deleteReusableDrafts(ObjectNode objectNode) {
        int size = this.draftManager.list().size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            DraftInfo reusableDraft = getReusableDraft((objectNode == null || objectNode.size() == 0) ? null : objectNode);
            if (reusableDraft == null) {
                break;
            }
            deleteDraft(reusableDraft.id);
            i++;
        }
        return i;
    }

    protected DraftInfo getReusableDraft(ObjectNode objectNode) {
        if (objectNode == null || objectNode.size() <= 0) {
            return null;
        }
        String string = objectNode.toString();
        for (DraftInfo draftInfo : this.draftManager.list()) {
            if (draftType().equals(draftInfo.type) && Utils.isEquals(String.valueOf(draftInfo.params), string)) {
                return draftInfo;
            }
        }
        return null;
    }

    protected void onPostLoaded(T t) {
        if (autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
        if (t instanceof FansOnlyPost) {
            if (isEdit() || this.fromDraft) {
                this.isFansOnlyBefore = ((FansOnlyPost) t).isFansOnly();
            } else {
                ((FansOnlyPost) t).setFansOnly(false);
            }
        }
    }

    protected void saveDraft() {
        String str;
        if (this.isPosted || this.discardDraft || (str = this.draftId) == null) {
            return;
        }
        boolean zSavePost = this.draftManager.savePost(str, savePost());
        this.promptDraftSaved |= zSavePost;
        if (zSavePost) {
            onDraftSavedSuccess(this.post);
        }
        if (this.promptDraftSaved && isFinishing()) {
            NVToast.makeText(getContext(), R.string.post_draft_saved, 0).show();
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        this.isPosted = true;
        finish();
    }

    @Override // com.narvii.post.BasePostActivity
    protected void updateView(T t) {
        super.updateView(t);
        updateInfluencerView();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i, String str, Throwable th) {
        super.onPostFail(postHelper, i, str, th);
    }

    protected void updateInfluencerView() {
        View influencerLockLayout = getInfluencerLockLayout();
        if (influencerLockLayout == null) {
            return;
        }
        if (!(this.post instanceof FansOnlyPost) || (!this.isFansOnlyBefore && !isMeInfluencer())) {
            influencerLockLayout.setVisibility(8);
            return;
        }
        if (!showFansOnlyLabel()) {
            influencerLockLayout.setVisibility(8);
            return;
        }
        if (shouldShowFansOnlySwitchDialog()) {
            influencerLockLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.-$$Lambda$DraftPostActivity$VyxBkfL3QVPDLod9gZi6aZlMHMM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateInfluencerView$0$DraftPostActivity(view);
                }
            });
        } else {
            influencerLockLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.-$$Lambda$DraftPostActivity$hwiEt3MwpVP8CYMMIZFtfpHBn4E
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f$0.lambda$updateInfluencerView$1$DraftPostActivity(view);
                }
            });
        }
        influencerLockLayout.setVisibility(0);
        View viewFindViewById = influencerLockLayout.findViewById(R.id.influencer_post_lock_indicator);
        if (viewFindViewById instanceof InfluencerPostIndicator) {
            ((InfluencerPostIndicator) viewFindViewById).setIsFansOnly(((FansOnlyPost) this.post).isFansOnly());
        }
    }

    public /* synthetic */ void lambda$updateInfluencerView$0$DraftPostActivity(View view) {
        showFansOnlySwitchDialog();
    }

    public /* synthetic */ void lambda$updateInfluencerView$1$DraftPostActivity(View view) {
        clickFansOnly();
    }

    protected void clickFansOnly() {
        if (this.post instanceof FansOnlyPost) {
            fanOnlyStatusChanged(!((FansOnlyPost) r0).isFansOnly());
        }
    }

    private void showFansOnlySwitchDialog() {
        T t = this.post;
        if (t instanceof FansOnlyPost) {
            boolean zIsFansOnly = ((FansOnlyPost) t).isFansOnly();
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            int i = R.layout.dialog_action_sheet_button_checked;
            actionSheetDialog.addItem(R.string.fan_club_member_only, 0, zIsFansOnly ? R.layout.dialog_action_sheet_button_checked : 0);
            if (zIsFansOnly) {
                i = 0;
            }
            actionSheetDialog.addItem(R.string.free, 0, i);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.-$$Lambda$DraftPostActivity$MDAHYz33qIKL4ROA4N2GY2mMUPA
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    this.f$0.lambda$showFansOnlySwitchDialog$2$DraftPostActivity(dialogInterface, i2);
                }
            });
            actionSheetDialog.show();
        }
    }

    public /* synthetic */ void lambda$showFansOnlySwitchDialog$2$DraftPostActivity(DialogInterface dialogInterface, int i) {
        fanOnlyStatusChanged(i == 0);
    }

    protected void fanOnlyStatusChanged(boolean z) {
        ((FansOnlyPost) this.post).setFansOnly(z);
        updateInfluencerView();
    }

    protected boolean isMeInfluencer() {
        User userProfile = this.accountService.getUserProfile();
        return userProfile != null && userProfile.isInfluencer();
    }
}
