package com.narvii.post;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
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

/* JADX INFO: loaded from: classes7.dex */
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

    protected void onDraftSavedSuccess(T t5) {
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
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            DraftInfo reusableDraft = getReusableDraft((objectNode == null || objectNode.size() == 0) ? null : objectNode);
            if (reusableDraft == null) {
                break;
            }
            deleteDraft(reusableDraft.id);
            i10++;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showFansOnlySwitchDialog$2(DialogInterface dialogInterface, int i10) {
        fanOnlyStatusChanged(i10 == 0);
    }

    private void showFansOnlySwitchDialog() {
        T t5 = this.post;
        if (t5 instanceof FansOnlyPost) {
            boolean zIsFansOnly = ((FansOnlyPost) t5).isFansOnly();
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            int i10 = R.layout.dialog_action_sheet_button_checked;
            actionSheetDialog.addItem(R.string.fan_club_member_only, 0, zIsFansOnly ? R.layout.dialog_action_sheet_button_checked : 0);
            if (zIsFansOnly) {
                i10 = 0;
            }
            actionSheetDialog.addItem(R.string.free, 0, i10);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.post.b
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i11) {
                    this.f2591a.lambda$showFansOnlySwitchDialog$2(dialogInterface, i11);
                }
            });
            actionSheetDialog.show();
        }
    }

    protected void clickFansOnly() {
        T t5 = this.post;
        if (t5 instanceof FansOnlyPost) {
            fanOnlyStatusChanged(!((FansOnlyPost) t5).isFansOnly());
        }
    }

    protected void fanOnlyStatusChanged(boolean z6) {
        ((FansOnlyPost) this.post).setFansOnly(z6);
        updateInfluencerView();
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

    protected boolean isMeInfluencer() {
        User userProfile = this.accountService.getUserProfile();
        return userProfile != null && userProfile.isInfluencer();
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

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateInfluencerView$0(View view) {
        showFansOnlySwitchDialog();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateInfluencerView$1(View view) {
        clickFansOnly();
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
        if (getStringParam("draftId") == null && this.draftId != null && !saveUnpostedDraftInFinish()) {
            T tSavePost = savePost();
            if (tSavePost != null && !tSavePost.isEmpty()) {
                PostObject postObject = (PostObject) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
                if (postObject != null && tSavePost.isSame(postObject)) {
                    deleteDraft(this.draftId);
                    this.discardDraft = true;
                    return;
                }
                return;
            }
            deleteDraft(this.draftId);
            this.discardDraft = true;
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(Bundle bundle) {
        ObjectNode objectNodeCreateObjectNode;
        super.onCreate(bundle);
        this.draftManager = (DraftManager) getService(EntryManager.ENTRY_DRAFT);
        this.accountService = (AccountService) getService("account");
        if (bundle == null) {
            String stringParam = getStringParam("draftId");
            this.draftId = stringParam;
            if (stringParam == null) {
                this.post = (T) JacksonUtils.readAs(getStringParam(Module.MODULE_POSTS), postClazz());
                return;
            }
            DraftInfo info = this.draftManager.getInfo(stringParam);
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
            String str = this.draftId;
            if (str != null) {
                this.post = (T) this.draftManager.readPost(str, postClazz());
            }
        }
        this.promptDraftSaved = bundle.getBoolean("promptDraftSaved");
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
        saveDraft();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, android.app.Activity
    protected void onPostCreate(Bundle bundle) {
        ObjectNode objectNodeCreateObjectNode;
        super.onPostCreate(bundle);
        T t5 = this.post;
        if (t5 == null) {
            this.isPosted = true;
            finish();
            return;
        }
        if (this.draftId == null) {
            this.fromDraft = false;
            final ObjectNode objectNodeBuildDraftParams = buildDraftParams();
            final DraftInfo reusableDraft = getReusableDraft(objectNodeBuildDraftParams);
            if (reusableDraft == null) {
                if (objectNodeBuildDraftParams == null) {
                    objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
                } else {
                    objectNodeCreateObjectNode = objectNodeBuildDraftParams;
                }
                this.params = objectNodeCreateObjectNode;
                this.draftId = this.draftManager.createDraft(draftType(), objectNodeBuildDraftParams, this.post);
                updateView(this.post);
                onPostLoaded(this.post);
            } else {
                final PostObject postObject = (PostObject) JacksonUtils.readAs(JacksonUtils.writeAsString(this.post), postClazz());
                final PostObject post = this.draftManager.readPost(reusableDraft.id, postClazz());
                ObjectNode objectNodeCreateObjectNode2 = reusableDraft.params;
                if (objectNodeCreateObjectNode2 == null) {
                    objectNodeCreateObjectNode2 = JacksonUtils.createObjectNode();
                }
                this.params = objectNodeCreateObjectNode2;
                updateView(post);
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.setMessage(R.string.post_draft_restore_draft_msg);
                builder.setPositiveButton(R.string.post_draft_restore, new DialogInterface.OnClickListener() { // from class: com.narvii.post.DraftPostActivity.1
                    /* JADX WARN: Type inference fix 'apply assigned field type' failed
                    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
                    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
                    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
                    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
                    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
                     */
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) throws Throwable {
                        ObjectNode objectNodeCreateObjectNode3;
                        DraftPostActivity draftPostActivity = DraftPostActivity.this;
                        String str = reusableDraft.id;
                        draftPostActivity.draftId = str;
                        DraftInfo info = draftPostActivity.draftManager.getInfo(str);
                        DraftPostActivity draftPostActivity2 = DraftPostActivity.this;
                        if (info == null || (objectNodeCreateObjectNode3 = info.params) == null) {
                            objectNodeCreateObjectNode3 = JacksonUtils.createObjectNode();
                        }
                        draftPostActivity2.params = objectNodeCreateObjectNode3;
                        DraftPostActivity draftPostActivity3 = DraftPostActivity.this;
                        T t10 = (T) post;
                        draftPostActivity3.post = t10;
                        draftPostActivity3.updateView(t10);
                        DraftPostActivity draftPostActivity4 = DraftPostActivity.this;
                        draftPostActivity4.onPostLoaded(draftPostActivity4.post);
                    }
                });
                builder.setNeutralButton(R.string.post_draft_discard, new DialogInterface.OnClickListener() { // from class: com.narvii.post.DraftPostActivity.2
                    @Override // android.content.DialogInterface.OnClickListener
                    public void onClick(DialogInterface dialogInterface, int i10) {
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
            updateView(t5);
            onPostLoaded(this.post);
        }
        updateInfluencerView();
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFail(PostHelper postHelper, int i10, String str, Throwable th) {
        super.onPostFail(postHelper, i10, str, th);
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.post.PostListener
    public void onPostFinished(PostHelper postHelper, ApiResponse apiResponse) {
        super.onPostFinished(postHelper, apiResponse);
        this.isPosted = true;
        finish();
    }

    protected void onPostLoaded(T t5) {
        if (autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
        if (t5 instanceof FansOnlyPost) {
            if (!isEdit() && !this.fromDraft) {
                ((FansOnlyPost) t5).setFansOnly(false);
            } else {
                this.isFansOnlyBefore = ((FansOnlyPost) t5).isFansOnly();
            }
        }
    }

    @Override // com.narvii.post.BasePostActivity, com.narvii.app.NVActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onSaveInstanceState(Bundle bundle) {
        String string;
        super.onSaveInstanceState(bundle);
        bundle.putString("draftId", this.draftId);
        ObjectNode objectNode = this.params;
        if (objectNode == null) {
            string = null;
        } else {
            string = objectNode.toString();
        }
        bundle.putString("params", string);
        String strWriteAsString = JacksonUtils.writeAsString(this.post);
        if (strWriteAsString != null && strWriteAsString.length() < 150000) {
            bundle.putString(Module.MODULE_POSTS, strWriteAsString);
            bundle.putBoolean("_containsPost", true);
        }
        bundle.putBoolean("promptDraftSaved", this.promptDraftSaved);
    }

    @Override // com.narvii.app.NVActivity, com.narvii.app.theme.NVThemeActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStart() {
        super.onStart();
        if (this.draftId != null && autoSaveDraftInterval() > 0) {
            Utils.handler.removeCallbacks(this.autoSaveDraft);
            Utils.postDelayed(this.autoSaveDraft, autoSaveDraftInterval());
        }
        String str = this.draftId;
        if (str != null && !this.draftManager.getDir(str).isDirectory()) {
            this.draftId = null;
            finish();
        }
    }

    @Override // com.narvii.app.NVActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
        Utils.handler.removeCallbacks(this.autoSaveDraft);
    }

    protected void updateInfluencerView() {
        View influencerLockLayout = getInfluencerLockLayout();
        if (influencerLockLayout == null) {
            return;
        }
        if ((this.post instanceof FansOnlyPost) && (this.isFansOnlyBefore || isMeInfluencer())) {
            if (!showFansOnlyLabel()) {
                influencerLockLayout.setVisibility(8);
                return;
            }
            if (shouldShowFansOnlySwitchDialog()) {
                influencerLockLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.c
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2592a.lambda$updateInfluencerView$0(view);
                    }
                });
            } else {
                influencerLockLayout.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.post.d
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2593a.lambda$updateInfluencerView$1(view);
                    }
                });
            }
            influencerLockLayout.setVisibility(0);
            View viewFindViewById = influencerLockLayout.findViewById(R.id.influencer_post_lock_indicator);
            if (viewFindViewById instanceof InfluencerPostIndicator) {
                ((InfluencerPostIndicator) viewFindViewById).setIsFansOnly(((FansOnlyPost) this.post).isFansOnly());
                return;
            }
            return;
        }
        influencerLockLayout.setVisibility(8);
    }

    @Override // com.narvii.post.BasePostActivity
    protected void updateView(T t5) {
        super.updateView(t5);
        updateInfluencerView();
    }
}
