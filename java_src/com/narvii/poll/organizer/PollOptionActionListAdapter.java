package com.narvii.poll.organizer;

import android.content.DialogInterface;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.notification.Notification;
import com.narvii.poll.PollOptionListResponse;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes3.dex */
public abstract class PollOptionActionListAdapter extends NVPagedAdapter<PollOption, PollOptionListResponse> {
    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 2;
    }

    public PollOptionActionListAdapter(NVContext nVContext) {
        super(nVContext);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<PollOption> dataType() {
        return PollOption.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<PollOptionListResponse> responseType() {
        return PollOptionListResponse.class;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return ((PollOption) obj).type == 1 ? 1 : 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        PollOption pollOption = (PollOption) obj;
        View viewCreateView = createView(pollOption.type == 1 ? R.layout.poll_option_collection_action_item : R.layout.poll_option_plain_action_item, viewGroup, view);
        if (pollOption.type == 1) {
            Item item = (Item) pollOption.refObject;
            ((ThumbImageView) viewCreateView.findViewById(R.id.avatar)).setImageUrl(item.author.icon());
            ((NicknameView) viewCreateView.findViewById(R.id.nickname)).setUser(item.author);
            ((ThumbImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(item.firstMedia());
            ((TextView) viewCreateView.findViewById(R.id.title)).setText(item.label);
            View viewFindViewById = viewCreateView.findViewById(R.id.fans_only_content_indicator);
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(item.isFansOnly() ? 0 : 8);
            }
            viewCreateView.findViewById(R.id.user_click).setOnClickListener(this.subviewClickListener);
            viewCreateView.findViewById(R.id.vote_item).setOnClickListener(this.subviewClickListener);
        } else {
            Media mediaFirstMedia = pollOption.firstMedia();
            ((ThumbImageView) viewCreateView.findViewById(R.id.image)).setImageMedia(mediaFirstMedia);
            View viewFindViewById2 = viewCreateView.findViewById(R.id.title);
            ((TextView) viewFindViewById2).setText(pollOption.title);
            viewFindViewById2.setVisibility((mediaFirstMedia == null || TextUtils.isEmpty(pollOption.title)) ? 8 : 0);
            View viewFindViewById3 = viewCreateView.findViewById(R.id.subTitle);
            ((TextView) viewFindViewById3).setText(pollOption.title);
            viewFindViewById3.setVisibility(mediaFirstMedia != null ? 8 : 0);
        }
        viewCreateView.findViewById(R.id.vote_action).setOnClickListener(this.subviewClickListener);
        viewCreateView.findViewById(R.id.vote_action2).setOnClickListener(this.subviewClickListener);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof PollOption) {
            PollOption pollOption = (PollOption) obj;
            if (view2 != null && view2.getId() == R.id.vote_item) {
                Feed feed = pollOption.refObject;
                if (feed instanceof Item) {
                    startActivity(FeedDetailFragment.intent((Item) feed));
                    return true;
                }
            }
            if (view2 != null && view2.getId() == R.id.user_click) {
                Feed feed2 = pollOption.refObject;
                if (feed2 instanceof Item) {
                    Intent intent = UserProfileFragment.intent(this, ((Item) feed2).author);
                    if (intent == null) {
                        return true;
                    }
                    startActivity(intent);
                    return true;
                }
            }
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    public void withdraw(final String str, final String str2, final PollOption pollOption, boolean z) {
        if (!z) {
            ActionSheetDialog actionSheetDialog = new ActionSheetDialog(getContext());
            actionSheetDialog.setTitle(R.string.detail_vote_warning_withdraw);
            actionSheetDialog.addItem(R.string.detail_vote_action_withdraw, true);
            actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poll.organizer.PollOptionActionListAdapter.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int i) {
                    if (i == 0) {
                        PollOptionActionListAdapter.this.withdraw(str, str2, pollOption, true);
                    }
                }
            });
            actionSheetDialog.show();
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(getContext());
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poll.organizer.PollOptionActionListAdapter.2
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                Notification notification = new Notification("delete", pollOption);
                notification.parentId = str;
                PollOptionActionListAdapter.this.sendNotification(notification);
                Blog blog = (Blog) JacksonUtils.readAs(str2, Blog.class);
                blog.updatePollOptions(pollOption, false);
                PollOptionActionListAdapter.this.sendNotification(new Notification("edit", blog));
            }
        };
        progressDialog.show();
        ((ApiService) getService("api")).exec(ApiRequest.builder().delete().path("/blog/" + str + "/poll/option/" + pollOption.polloptId).build(), progressDialog.dismissListener);
    }
}
