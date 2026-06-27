package com.narvii.user.list;

import android.text.TextUtils;
import android.view.View;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.chat.input.MentionedEditText;
import com.narvii.model.User;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;
import com.narvii.widget.UserAvatarLayout;

/* loaded from: classes3.dex */
public class UserListHelper {
    NVContext nvContext;
    UserListItemHost userListItemHost;

    public UserListHelper(NVContext nVContext, UserListItemHost userListItemHost) {
        this.nvContext = nVContext;
        this.userListItemHost = userListItemHost;
    }

    public void updateCell(User user, View view) {
        UserAvatarLayout userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
        if (userAvatarLayout != null) {
            userAvatarLayout.setUser(user);
        } else {
            ((ThumbImageView) view.findViewById(R.id.avatar)).setImageUrl(user.icon());
        }
        View viewFindViewById = view.findViewById(R.id.nickname);
        if (viewFindViewById instanceof NicknameView) {
            ((NicknameView) viewFindViewById).setUser(user);
        } else if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setText(user.nickname());
        }
        View viewFindViewById2 = view.findViewById(R.id.address);
        int i = 8;
        if (viewFindViewById2 != null) {
            if (!TextUtils.isEmpty(user.address)) {
                ((TextView) viewFindViewById2).setText(user.address);
            }
            viewFindViewById2.setVisibility(8);
        }
        TextView textView = (TextView) view.findViewById(R.id.amino_id);
        if (textView != null) {
            if (this.userListItemHost.showAminoId() && !TextUtils.isEmpty(user.aminoId)) {
                textView.setText(MentionedEditText.DEFAULT_METION_TAG + user.aminoId);
                textView.setVisibility(0);
            } else {
                textView.setVisibility(8);
            }
        }
        TextView textView2 = (TextView) view.findViewById(R.id.extra_info);
        if (textView2 != null) {
            textView2.setVisibility(8);
        }
        TextView textView3 = (TextView) view.findViewById(R.id.disabled);
        if (textView3 != null) {
            if (this.userListItemHost.showDisableView() && user.isDisabled()) {
                i = 0;
            }
            textView3.setVisibility(i);
        }
    }
}
