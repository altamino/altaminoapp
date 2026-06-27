package com.narvii.members;

import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogUtils;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class HorizontalMemberAdapter extends NVRecycleAdapter<User, UserListResponse> {
    protected static final int ITEM_TYPE_END = 1;
    protected static final int ITEM_TYPE_NORMAL = 0;

    protected int getEndItemLayoutId() {
        return R.layout.live_layer_main_online_member_list_end;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemTypeCount() {
        return 2;
    }

    protected abstract int getNormalItemLayoutId();

    protected abstract boolean shouldShakeMoods();

    public HorizontalMemberAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemType(int i, Object obj) {
        return (getEndItemLayoutId() != 0 || i < pageSize() - 1) ? 0 : 1;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected RecyclerView.ViewHolder getItemViewHolder(ViewGroup viewGroup, int i) {
        if (i == 0) {
            return new UserViewHolder(LayoutInflater.from(this.context.getContext()).inflate(getNormalItemLayoutId(), viewGroup, false));
        }
        if (i == 1) {
            return new EndViewHolder(LayoutInflater.from(this.context.getContext()).inflate(getEndItemLayoutId(), viewGroup, false));
        }
        return null;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (viewHolder instanceof UserViewHolder) {
            UserViewHolder userViewHolder = (UserViewHolder) viewHolder;
            Object itemAt = getItemAt(i);
            if (itemAt instanceof User) {
                User user = (User) itemAt;
                userViewHolder.moodView.setAnimate(true);
                if (shouldShakeMoods()) {
                    userViewHolder.moodView.shakeCrazily();
                }
                int i2 = 4;
                userViewHolder.moodView.setVisibility((user.onlineStatus != 1 || Sticker.isEmpty(user.getMoodSticker())) ? 4 : 0);
                userViewHolder.moodView.setMoodSticker(user);
                View view = userViewHolder.onlineView;
                if (user.onlineStatus == 1 && Sticker.isEmpty(user.getMoodSticker())) {
                    i2 = 0;
                }
                view.setVisibility(i2);
                UserAvatarLayout userAvatarLayout = userViewHolder.userAvatarLayout;
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(user);
                }
                userViewHolder.nicknameView.setUser(user);
                LogUtils.setAttachedObject(viewHolder.itemView, user);
                if (i == 0) {
                    if (Utils.isRtl()) {
                        ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).rightMargin = getDefaultPadding();
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).leftMargin = getDefaultPadding();
                        return;
                    }
                }
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).leftMargin = 0;
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).rightMargin = 0;
                return;
            }
            return;
        }
        if (viewHolder instanceof EndViewHolder) {
            EndViewHolder endViewHolder = (EndViewHolder) viewHolder;
            endViewHolder.itemView.setVisibility(0);
            Object itemAt2 = getItemAt(i);
            if (itemAt2 instanceof User) {
                User user2 = (User) itemAt2;
                NVImageView nVImageView = endViewHolder.avatar;
                if (nVImageView != null) {
                    nVImageView.setImageUrl(user2.icon());
                }
                if (Utils.isRtl()) {
                    ((ViewGroup.MarginLayoutParams) endViewHolder.itemView.getLayoutParams()).leftMargin = getDefaultPadding();
                } else {
                    ((ViewGroup.MarginLayoutParams) endViewHolder.itemView.getLayoutParams()).rightMargin = getDefaultPadding();
                }
            }
        }
    }

    protected class UserViewHolder extends RecyclerView.ViewHolder {
        ImageView badgeView;
        MoodView moodView;
        NicknameView nicknameView;
        View onlineView;
        UserAvatarLayout userAvatarLayout;

        public UserViewHolder(View view) {
            super(view);
            this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
            this.nicknameView = (NicknameView) view.findViewById(R.id.nickname);
            this.badgeView = (ImageView) view.findViewById(R.id.badge);
            this.moodView = (MoodView) view.findViewById(R.id.mood);
            this.onlineView = view.findViewById(R.id.online_status_oval);
        }
    }

    private class EndViewHolder extends RecyclerView.ViewHolder {
        NVImageView avatar;

        public EndViewHolder(View view) {
            super(view);
            this.avatar = (NVImageView) view.findViewById(R.id.avatar);
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<User> dataType() {
        return User.class;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected List<User> filterResponseList(List<User> list) {
        return new FilterHelper(this.context).filter(list);
    }

    protected int getDefaultPadding() {
        return this.context.getContext().getResources().getDimensionPixelOffset(R.dimen.default_padding_horizontal);
    }
}
