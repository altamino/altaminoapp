package com.narvii.chat.video.floating;

import android.content.Context;
import android.util.AttributeSet;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.account.AccountService;
import com.narvii.amino.master.R;
import com.narvii.model.ChatThread;
import com.narvii.model.User;
import com.narvii.util.Utils;
import com.narvii.video.ui.floating.FloatingWindowBaseLayout;
import com.narvii.widget.NVImageView;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class ThreadFloatingLayout extends FloatingWindowBaseLayout {
    NVImageView avatar;

    public ThreadFloatingLayout(@NonNull Context context) {
        super(context);
    }

    public ThreadFloatingLayout(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

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
    public void setThread(CommunityThread communityThread) {
        ChatThread chatThread = communityThread.chatThread;
        user = null;
        User user = null;
        if (chatThread.type != 0) {
            User userOwner = chatThread.author;
            if (userOwner == null) {
                userOwner = chatThread.owner();
            }
            this.avatar.setImageUrl(userOwner != null ? userOwner.icon() : null);
            return;
        }
        String userId = ((AccountService) Utils.getNVContext(getContext()).getService("account")).getUserId();
        List<User> list = chatThread.membersSummary;
        if (list != null) {
            for (User user2 : list) {
                if (!Utils.isEqualsNotNull(user2.uid, userId)) {
                    user = user2;
                    break;
                }
            }
        }
        if (user != null) {
            this.avatar.setImageUrl(user.icon());
        }
    }

    @Override // com.narvii.video.ui.floating.FloatingWindowBaseLayout, android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.avatar = (NVImageView) findViewById(R.id.avatar);
    }
}
