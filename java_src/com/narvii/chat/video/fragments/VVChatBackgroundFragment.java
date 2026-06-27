package com.narvii.chat.video.fragments;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.github.mmin18.widget.RealtimeBlurView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.chat.ThreadInfoHost;
import com.narvii.config.ConfigService;
import com.narvii.model.ChatThread;
import com.narvii.theme.ThemePackService;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NVImageView;

/* loaded from: classes2.dex */
public class VVChatBackgroundFragment extends NVFragment implements ThreadInfoHost {
    public static final String KEY_CHAT_THREAD = "key_chat_thread";
    ChatThread chatThread;
    NVImageView imgChatBackground;
    private Drawable themeColorDrawable;
    private Drawable threadBgDrawable;
    RealtimeBlurView vRealTimeBlurView;
    View vRootView;

    @Override // com.narvii.chat.ThreadInfoHost
    public ChatThread getThread() {
        return null;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public String getThreadId() {
        return null;
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        String stringParam = getStringParam(KEY_CHAT_THREAD);
        if (bundle != null) {
            stringParam = bundle.getString(KEY_CHAT_THREAD);
        }
        this.chatThread = (ChatThread) JacksonUtils.readAs(stringParam, ChatThread.class);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_vvchat_background, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            bundle.putString(KEY_CHAT_THREAD, JacksonUtils.writeAsString(chatThread));
        }
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.vRootView = view.findViewById(R.id.bg_root);
        this.imgChatBackground = (NVImageView) view.findViewById(R.id.chat_background);
        this.vRealTimeBlurView = (RealtimeBlurView) view.findViewById(R.id.chat_blur_background);
        updateBackground();
    }

    private void updateBackground() {
        ChatThread chatThread = this.chatThread;
        if (chatThread != null) {
            this.imgChatBackground.setImageMedia(chatThread.getBackground());
            this.vRootView.setBackgroundDrawable(null);
            this.vRealTimeBlurView.setVisibility(0);
            return;
        }
        Drawable themeBackgroundDrawable = getThemeBackgroundDrawable();
        this.imgChatBackground.setImageDrawable(themeBackgroundDrawable);
        if (themeBackgroundDrawable == null) {
            this.vRealTimeBlurView.setVisibility(4);
            this.vRootView.setBackgroundDrawable(getThemeColorDrawable());
        } else {
            this.vRealTimeBlurView.setVisibility(0);
            this.vRootView.setBackgroundDrawable(null);
        }
    }

    private Drawable getThemeBackgroundDrawable() {
        if (this.themeColorDrawable != null) {
            return this.threadBgDrawable;
        }
        DisplayMetrics displayMetrics = getContext().getResources().getDisplayMetrics();
        this.threadBgDrawable = ((ThemePackService) getService("themePack")).getDrawable(((ConfigService) getService("config")).getCommunityId(), ThemePackService.ThemeObject.BACKGROUND, Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels), Math.max(displayMetrics.widthPixels, displayMetrics.heightPixels));
        return this.threadBgDrawable;
    }

    private Drawable getThemeColorDrawable() {
        if (this.themeColorDrawable != null) {
            return this.threadBgDrawable;
        }
        float[] fArr = new float[3];
        Color.colorToHSV(((ThemePackService) getService("themePack")).getThemeColor(((ConfigService) getService("config")).getCommunityId()), fArr);
        fArr[2] = fArr[2] * 0.85f;
        this.themeColorDrawable = new ColorDrawable(Color.HSVToColor(fArr));
        return this.threadBgDrawable;
    }

    @Override // com.narvii.chat.ThreadInfoHost
    public void onThreadChanged(ChatThread chatThread) {
        if (chatThread == null) {
            return;
        }
        this.chatThread = chatThread;
        updateBackground();
    }
}
