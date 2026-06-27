package com.narvii.onboarding;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.narvii.account.notice.AccountNotice;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.model.Community;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class WelcomeMessageFragment extends NVFragment {
    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.dialog_welcome_message_content, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        Community community = (Community) JacksonUtils.readAs(getStringParam("community"), Community.class);
        TextView textView = (TextView) view.findViewById(R.id.title);
        Object[] objArr = new Object[1];
        objArr[0] = community != null ? community.name : "Amino";
        textView.setText(getString(R.string.welcome_to_amino, objArr));
        if (community != null && community.agent != null) {
            view.findViewById(R.id.agent_layout).setVisibility(0);
            ((UserAvatarLayout) view.findViewById(R.id.user_avatar_layout)).setUser(community.agent);
            ((NicknameView) view.findViewById(R.id.nickname)).setUser(community.agent);
        } else {
            view.findViewById(R.id.agent_layout).setVisibility(8);
        }
        ((TextView) view.findViewById(R.id.text)).setText(getStringParam(AccountNotice.LEVEL_MESSAGE));
    }
}
