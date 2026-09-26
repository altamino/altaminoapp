package com.narvii.chat.thread;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.StartGroupChatFragment;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.logging.LogEvent;
import com.narvii.model.ChatBubble;
import com.narvii.modulization.CommunityConfigHelper;
import com.narvii.modulization.Module;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.modulization.entry.EntrySetting;
import com.narvii.modulization.entry.Privilege;
import com.narvii.post.DraftManager;
import com.narvii.post.draft.DraftListFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.widget.ACMAlertDialog;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes.dex */
public class ThreadHelper {
    private NVContext ctx;

    /* JADX INFO: renamed from: com.narvii.chat.thread.ThreadHelper$2, reason: invalid class name */
    class AnonymousClass2 implements DialogInterface.OnClickListener {
        final /* synthetic */ ChatBubble val$bubble;
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ boolean val$checkDraft;
        final /* synthetic */ String val$source;
        final /* synthetic */ String val$stickerCollectionId;

        public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        AnonymousClass2(String str, ChatBubble chatBubble, String str2, Callback callback, boolean z6) {
            this.val$source = str;
            this.val$bubble = chatBubble;
            this.val$stickerCollectionId = str2;
            this.val$callback = callback;
            this.val$checkDraft = z6;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$0(View view) {
            Intent intent = FragmentWrapperActivity.intent(DraftListFragment.class);
            intent.putExtra("draftType", "thread");
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(ThreadHelper.this.ctx.getContext(), intent);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onClick$1(String str, ChatBubble chatBubble, String str2, Callback callback, View view) {
            ThreadHelper.this.openComposeView(str, chatBubble, str2, callback);
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i10) {
            if (i10 == 0) {
                Intent intent = FragmentWrapperActivity.intent(StartGroupChatFragment.class);
                intent.putExtra("maxMember", 100);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.val$source);
                ChatBubble chatBubble = this.val$bubble;
                if (chatBubble != null) {
                    intent.putExtra("bubble", JacksonUtils.writeAsString(chatBubble));
                }
                String str = this.val$stickerCollectionId;
                if (str != null) {
                    intent.putExtra("stickerCollectionId", str);
                }
                LogEvent.clickWildcardBuilder(ThreadHelper.this.ctx, "PrivateChat").send();
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(ThreadHelper.this.ctx.getContext(), intent);
                Callback callback = this.val$callback;
                if (callback != null) {
                    callback.call(Boolean.TRUE);
                    return;
                }
                return;
            }
            if (i10 == 1) {
                LogEvent.clickWildcardBuilder(ThreadHelper.this.ctx, "PublicChatroom").send();
                if (!this.val$checkDraft) {
                    ThreadHelper.this.openComposeView(this.val$source, this.val$bubble, this.val$stickerCollectionId, this.val$callback);
                    return;
                }
                if (!((DraftManager) ThreadHelper.this.ctx.getService(EntryManager.ENTRY_DRAFT)).hasDraft("thread")) {
                    ThreadHelper.this.openComposeView(this.val$source, this.val$bubble, this.val$stickerCollectionId, this.val$callback);
                    return;
                }
                ACMAlertDialog aCMAlertDialog = new ACMAlertDialog(ThreadHelper.this.ctx.getContext());
                aCMAlertDialog.setMessage(R.string.create_chat_draft_check_hint);
                aCMAlertDialog.setVerticalButtons();
                aCMAlertDialog.addButton(R.string.view_drafts, new View.OnClickListener() { // from class: com.narvii.chat.thread.i
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2080a.lambda$onClick$0(view);
                    }
                });
                final String str2 = this.val$source;
                final ChatBubble chatBubble2 = this.val$bubble;
                final String str3 = this.val$stickerCollectionId;
                final Callback callback2 = this.val$callback;
                aCMAlertDialog.addButton(R.string.create_new, new View.OnClickListener() { // from class: com.narvii.chat.thread.j
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f2081a.lambda$onClick$1(str2, chatBubble2, str3, callback2, view);
                    }
                });
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.show();
            }
        }
    }

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void showCreateChatDialog(String str) {
        showCreateChatDialog(str, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openComposeView(String str, ChatBubble chatBubble, String str2, Callback<Boolean> callback) {
        Intent intent = new Intent(this.ctx.getContext(), (Class<?>) ThreadPostNewActivity.class);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ThreadPost()));
        if (chatBubble != null) {
            intent.putExtra("bubble", JacksonUtils.writeAsString(chatBubble));
        }
        if (str2 != null) {
            intent.putExtra("stickerCollectionId", str2);
        }
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx.getContext(), intent);
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    public void showCreateChatDialog(String str, ChatBubble chatBubble, String str2, Callback<Boolean> callback) {
        showCreateChatDialog(str, chatBubble, str2, false, callback);
    }

    public ThreadHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }

    public void showCreateChatDialog(String str, ChatBubble chatBubble, String str2, boolean z6, Callback<Boolean> callback) {
        int i10;
        Privilege privilege;
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx);
        boolean z10 = true;
        boolean z11 = communityConfigHelper.isPostEnabled() && communityConfigHelper.isPublicChatEnabled();
        EntrySetting entrySetting = new EntryManager(this.ctx).getEntrySetting(Module.MODULE_POSTS, "postType", "publicChatRooms");
        AccountService accountService = (AccountService) this.ctx.getService("account");
        if (entrySetting == null || (privilege = entrySetting.privilege) == null) {
            i10 = 0;
        } else {
            int i11 = privilege.type == 2 ? privilege.minLevel : 0;
            if (accountService.hasAccount() && (accountService.getUserProfile().level >= i11 || accountService.getUserProfile().isCurator())) {
                i11 = 0;
            }
            if (entrySetting.privilege.type != 3 || (accountService.hasAccount() && accountService.getUserProfile().isCurator())) {
                i10 = i11;
            } else {
                i10 = i11;
                z10 = false;
            }
        }
        if (z11 && z10) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.ctx.getContext());
            actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.chat.thread.ThreadHelper.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    LogEvent.clickWildcardBuilder(ThreadHelper.this.ctx, "CancelCreateChat").send();
                }
            });
            actionSheetDialog.addItem(R.string.chat_private_chat, false);
            actionSheetDialog.addItem(R.string.chat_public_chat, 0, R.layout.item_compose_action_sheet_with_check);
            actionSheetDialog.setOnClickListener(new AnonymousClass2(str, chatBubble, str2, callback, z6));
            actionSheetDialog.show();
            View viewFindViewById = actionSheetDialog.findViewById(R.id.level_lock);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(i10 > 0 ? 0 : 8);
            }
            View viewFindViewById2 = actionSheetDialog.findViewById(R.id.level_no);
            if (viewFindViewById2 instanceof TextView) {
                viewFindViewById2.setVisibility(i10 > 0 ? 0 : 8);
                TextView textView = (TextView) viewFindViewById2;
                StringBuilder sb = new StringBuilder();
                sb.append("LV");
                Privilege privilege2 = entrySetting.privilege;
                sb.append(privilege2 != null ? privilege2.minLevel : 0);
                textView.setText(sb.toString());
                return;
            }
            return;
        }
        Intent intent = FragmentWrapperActivity.intent(StartGroupChatFragment.class);
        intent.putExtra("maxMember", 100);
        intent.putExtra(ExternalPostPreviewFragment.SOURCE, str);
        safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.ctx.getContext(), intent);
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }
}
