package com.narvii.flag.resolve;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.narvii.chat.detail.ThreadDetailFragment;
import com.narvii.flag.resolve.FlagResolveBar;
import com.narvii.model.ChatThread;
import com.narvii.model.NVObject;
import com.narvii.util.Callback;

/* loaded from: classes2.dex */
public class ThreadDetailFlagModeFragment extends ThreadDetailFragment implements FlagResolveBar.FlagAttachObject {
    FlagResolveBar flagResolveBar;
    ChatThread thread;

    @Override // com.narvii.chat.detail.ThreadDetailFragment, com.narvii.detail.DetailFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.flagResolveBar = FlagModeHelper.attachFlagMode(view, this);
        this.onFinishListener = new Callback<ChatThread>() { // from class: com.narvii.flag.resolve.ThreadDetailFlagModeFragment.1
            @Override // com.narvii.util.Callback
            public void call(ChatThread chatThread) {
                ThreadDetailFlagModeFragment threadDetailFlagModeFragment = ThreadDetailFlagModeFragment.this;
                threadDetailFlagModeFragment.thread = chatThread;
                if (chatThread.status == 9) {
                    threadDetailFlagModeFragment.flagResolveBar.showAlreadyResolved();
                }
            }
        };
    }

    @Override // com.narvii.chat.detail.ThreadDetailFragment, com.narvii.app.NVFragment
    public Boolean hasPostEntry() {
        return false;
    }

    @Override // com.narvii.chat.detail.ThreadDetailFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityResult(int i, int i2, Intent intent) {
        FlagModeHelper.handleActivityResult(this, this.flagResolveBar, i, i2, intent, this.thread, 12);
        super.onActivityResult(i, i2, intent);
    }

    @Override // com.narvii.flag.resolve.FlagResolveBar.FlagAttachObject
    public NVObject attachObject() {
        return this.thread;
    }
}
