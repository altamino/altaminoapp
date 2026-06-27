package com.narvii.chat.thread;

import android.content.DialogInterface;
import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVContext;
import com.narvii.chat.invite.StartGroupChatFragment;
import com.narvii.chat.post.ThreadPost;
import com.narvii.chat.post.ThreadPostNewActivity;
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

/* loaded from: classes2.dex */
public class ThreadHelper {
    private NVContext ctx;

    public ThreadHelper(NVContext nVContext) {
        this.ctx = nVContext;
    }

    public void showCreateChatDialog(String str) {
        showCreateChatDialog(str, null, null, null);
    }

    public void showCreateChatDialog(String str, ChatBubble chatBubble, String str2, Callback<Boolean> callback) {
        showCreateChatDialog(str, chatBubble, str2, false, callback);
    }

    public void showCreateChatDialog(String str, ChatBubble chatBubble, String str2, boolean z, Callback<Boolean> callback) {
        int i;
        Privilege privilege;
        CommunityConfigHelper communityConfigHelper = new CommunityConfigHelper(this.ctx);
        boolean z2 = true;
        boolean z3 = communityConfigHelper.isPostEnabled() && communityConfigHelper.isPublicChatEnabled();
        EntrySetting entrySetting = new EntryManager(this.ctx).getEntrySetting(Module.MODULE_POSTS, "postType", "publicChatRooms");
        AccountService accountService = (AccountService) this.ctx.getService("account");
        if (entrySetting == null || (privilege = entrySetting.privilege) == null) {
            i = 0;
        } else {
            int i2 = privilege.type == 2 ? privilege.minLevel : 0;
            if (accountService.hasAccount() && (accountService.getUserProfile().level >= i2 || accountService.getUserProfile().isCurator())) {
                i2 = 0;
            }
            if (entrySetting.privilege.type != 3 || (accountService.hasAccount() && accountService.getUserProfile().isCurator())) {
                i = i2;
            } else {
                i = i2;
                z2 = false;
            }
        }
        if (z3 && z2) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.ctx.getContext());
            actionSheetDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.narvii.chat.thread.ThreadHelper.1
                @Override // android.content.DialogInterface.OnCancelListener
                public void onCancel(DialogInterface dialogInterface) {
                    LogEvent.clickWildcardBuilder(ThreadHelper.this.ctx, "CancelCreateChat").send();
                }
            });
            actionSheetDialog.addItem(R.string.chat_private_chat, false);
            actionSheetDialog.addItem(R.string.chat_public_chat, 0, R.layout.item_compose_action_sheet_with_check);
            actionSheetDialog.setOnClickListener(new AnonymousClass2(str, chatBubble, str2, callback, z));
            actionSheetDialog.show();
            View viewFindViewById = actionSheetDialog.findViewById(R.id.level_lock);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(i > 0 ? 0 : 8);
            }
            View viewFindViewById2 = actionSheetDialog.findViewById(R.id.level_no);
            if (viewFindViewById2 instanceof TextView) {
                viewFindViewById2.setVisibility(i > 0 ? 0 : 8);
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
        intent.putExtra("Source", str);
        this.ctx.getContext().startActivity(intent);
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }

    /* renamed from: com.narvii.chat.thread.ThreadHelper$2, reason: invalid class name */
    class AnonymousClass2 implements DialogInterface.OnClickListener {
        final /* synthetic */ ChatBubble val$bubble;
        final /* synthetic */ Callback val$callback;
        final /* synthetic */ boolean val$checkDraft;
        final /* synthetic */ String val$source;
        final /* synthetic */ String val$stickerCollectionId;

        AnonymousClass2(String str, ChatBubble chatBubble, String str2, Callback callback, boolean z) {
            this.val$source = str;
            this.val$bubble = chatBubble;
            this.val$stickerCollectionId = str2;
            this.val$callback = callback;
            this.val$checkDraft = z;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            if (i == 0) {
                Intent intent = FragmentWrapperActivity.intent(StartGroupChatFragment.class);
                intent.putExtra("maxMember", 100);
                intent.putExtra("Source", this.val$source);
                ChatBubble chatBubble = this.val$bubble;
                if (chatBubble != null) {
                    intent.putExtra("bubble", JacksonUtils.writeAsString(chatBubble));
                }
                String str = this.val$stickerCollectionId;
                if (str != null) {
                    intent.putExtra("stickerCollectionId", str);
                }
                LogEvent.clickWildcardBuilder(ThreadHelper.this.ctx, "PrivateChat").send();
                ThreadHelper.this.ctx.getContext().startActivity(intent);
                Callback callback = this.val$callback;
                if (callback != null) {
                    callback.call(Boolean.TRUE);
                    return;
                }
                return;
            }
            if (i == 1) {
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
                aCMAlertDialog.addButton(R.string.view_drafts, new View.OnClickListener() { // from class: com.narvii.chat.thread.-$$Lambda$ThreadHelper$2$-X2GWQAYaL_KyAqL9EWqLA-hbgY
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onClick$0$ThreadHelper$2(view);
                    }
                });
                final String str2 = this.val$source;
                final ChatBubble chatBubble2 = this.val$bubble;
                final String str3 = this.val$stickerCollectionId;
                final Callback callback2 = this.val$callback;
                aCMAlertDialog.addButton(R.string.create_new, new View.OnClickListener() { // from class: com.narvii.chat.thread.-$$Lambda$ThreadHelper$2$MSRcMYyjg-6mCYCQlmVsvTeHrT4
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        this.f$0.lambda$onClick$1$ThreadHelper$2(str2, chatBubble2, str3, callback2, view);
                    }
                });
                aCMAlertDialog.addButton(R.string.cancel, null);
                aCMAlertDialog.show();
            }
        }

        public /* synthetic */ void lambda$onClick$0$ThreadHelper$2(View view) {
            Intent intent = FragmentWrapperActivity.intent(DraftListFragment.class);
            intent.putExtra("draftType", "thread");
            ThreadHelper.this.ctx.getContext().startActivity(intent);
        }

        public /* synthetic */ void lambda$onClick$1$ThreadHelper$2(String str, ChatBubble chatBubble, String str2, Callback callback, View view) {
            ThreadHelper.this.openComposeView(str, chatBubble, str2, callback);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void openComposeView(String str, ChatBubble chatBubble, String str2, Callback<Boolean> callback) {
        Intent intent = new Intent(this.ctx.getContext(), (Class<?>) ThreadPostNewActivity.class);
        intent.putExtra("Source", str);
        intent.putExtra(Module.MODULE_POSTS, JacksonUtils.writeAsString(new ThreadPost()));
        if (chatBubble != null) {
            intent.putExtra("bubble", JacksonUtils.writeAsString(chatBubble));
        }
        if (str2 != null) {
            intent.putExtra("stickerCollectionId", str2);
        }
        this.ctx.getContext().startActivity(intent);
        if (callback != null) {
            callback.call(Boolean.TRUE);
        }
    }
}
