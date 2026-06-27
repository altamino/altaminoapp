package com.narvii.poll;

import android.app.Activity;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.app.NVFragment;
import com.narvii.catalog.picker.CatalogPickerFragment;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.detail.DetailAdapter;
import com.narvii.feed.FeedHelper;
import com.narvii.list.NVAdapter;
import com.narvii.model.Blog;
import com.narvii.model.Item;
import com.narvii.model.PollOption;
import com.narvii.model.api.ApiResponse;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.notification.Notification;
import com.narvii.notification.NotificationListener;
import com.narvii.poll.PollOptionListLayout;
import com.narvii.poll.PollService;
import com.narvii.poll.organizer.MyParticipationListFragment;
import com.narvii.poll.organizer.PlainPollOrganizerListFragment;
import com.narvii.poll.organizer.PollOptionOrganizerFragment;
import com.narvii.poll.post.PlainPollPostActivity;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ActionSheetDialog;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import java.util.List;

/* loaded from: classes3.dex */
public class PollAdapter implements PollService.VoteListener, NotificationListener {
    public static final int REQUEST_POLL_ORGANIZER = 62978;
    public static final int REQUEST_POLL_PICK_ITEM = 62977;
    ApiService api;
    int backgroundColor;
    Blog blog;
    boolean darkTheme;
    Boolean forceShowResult;
    NVFragment fragment;
    View optionsCell;
    PollOptionListLayout optionsView;
    NVAdapter parent;
    PollService pollService;
    private boolean preview;
    public PollOptionListLayout.PollPreviewBlockListener previewBlockListener;
    VotersSummaryResponse votersSummary;
    final ApiResponseListener<VotersSummaryResponse> votersSummaryListener = new ApiResponseListener<VotersSummaryResponse>(VotersSummaryResponse.class) { // from class: com.narvii.poll.PollAdapter.1
        @Override // com.narvii.util.http.ApiResponseListener
        public void onFinish(ApiRequest apiRequest, VotersSummaryResponse votersSummaryResponse) throws Exception {
            PollAdapter pollAdapter = PollAdapter.this;
            pollAdapter.votersSummaryRequest = null;
            pollAdapter.votersSummary = votersSummaryResponse;
            if (pollAdapter.optionsView != null && pollAdapter.showResult()) {
                PollAdapter pollAdapter2 = PollAdapter.this;
                pollAdapter2.optionsView.setVotersSummary(true, pollAdapter2.votersSummary, true);
            }
            PollAdapter.this.parent.notifyDataSetChanged();
        }
    };
    ApiRequest votersSummaryRequest;
    static final DetailAdapter.CellType VOTE_OPTIONS = new DetailAdapter.CellType("detail.vote.options");
    static final DetailAdapter.CellType VOTE_NOT_ENOUGH_OPTIONS = new DetailAdapter.CellType("detail.vote.not_enough_options");
    static final DetailAdapter.CellType VOTE_TOOLBAR = new DetailAdapter.CellType("detail.vote.toolbar");

    @Override // com.narvii.notification.NotificationListener
    public void onNotification(Notification notification) {
    }

    @Override // com.narvii.poll.PollService.VoteListener
    public void onVoteFail(Blog blog, String str, String str2) {
    }

    public PollAdapter(NVAdapter nVAdapter, NVFragment nVFragment) {
        this.parent = nVAdapter;
        this.fragment = nVFragment;
        this.api = (ApiService) nVAdapter.getService("api");
        this.pollService = (PollService) nVAdapter.getService(EntryManager.ENTRY_POLL);
        this.pollService.listeners.addListener(this);
    }

    public void setPreview(boolean z) {
        this.preview = z;
        PollOptionListLayout pollOptionListLayout = this.optionsView;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.preview = z;
        }
    }

    public void destory() {
        this.pollService.listeners.removeListener(this);
    }

    public void setBlog(Blog blog) {
        this.blog = blog;
        this.parent.notifyDataSetChanged();
        if (this.optionsView != null) {
            Boolean bool = !blog.isContentAccessible() ? Boolean.FALSE : null;
            PollOptionListLayout pollOptionListLayout = this.optionsView;
            Boolean bool2 = this.forceShowResult;
            if (bool2 != null) {
                bool = bool2;
            }
            pollOptionListLayout.setPoll(blog, bool, false);
        }
    }

    protected boolean showResult() {
        Boolean bool = this.forceShowResult;
        return bool != null ? bool.booleanValue() : this.blog.isPollEnded() || this.blog.isPollVoted();
    }

    void sendVotersSummaryRequest() {
        ApiRequest apiRequest = this.votersSummaryRequest;
        if (apiRequest != null) {
            this.api.abort(apiRequest, this.votersSummaryListener);
        }
        this.votersSummaryRequest = ApiRequest.builder().path("/blog/" + this.blog.id() + "/poll/options-active-voterssummary").build();
        this.api.exec(this.votersSummaryRequest, this.votersSummaryListener);
    }

    void abortVotersSummaryRequest() {
        ApiRequest apiRequest = this.votersSummaryRequest;
        if (apiRequest != null) {
            this.api.abort(apiRequest, this.votersSummaryListener);
            this.votersSummaryRequest = null;
        }
    }

    public void setDarkTheme(boolean z, int i) {
        this.backgroundColor = i;
        this.darkTheme = z;
        PollOptionListLayout pollOptionListLayout = this.optionsView;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.setDarkTheme(z);
        }
    }

    public boolean isMine() {
        if (this.blog == null) {
            return false;
        }
        return Utils.isEqualsNotNull(this.blog.uid(), ((AccountService) this.parent.getService("account")).getUserId());
    }

    public int polloptType() {
        Blog blog = this.blog;
        if (blog == null || blog.type != 4) {
            return 0;
        }
        return JacksonUtils.nodeInt(blog.extensions, "pollSettings", "polloptType");
    }

    public boolean isJoinEnabled() {
        if (polloptType() != 1) {
            return false;
        }
        return JacksonUtils.nodeBoolean(this.blog.extensions, "pollSettings", "joinEnabled");
    }

    public void buildCells(List<Object> list) {
        List<PollOption> list2;
        Blog blog = this.blog;
        if (blog == null || (list2 = blog.polloptList) == null) {
            return;
        }
        if (list2.size() < 2) {
            list.add(VOTE_NOT_ENOUGH_OPTIONS);
        } else {
            list.add(VOTE_OPTIONS);
        }
        if (this.blog.endTime != null) {
            list.add(VOTE_TOOLBAR);
        }
    }

    public View getCell(Object obj, View view, ViewGroup viewGroup) {
        int i;
        int i2;
        int i3 = 0;
        z = false;
        boolean z = false;
        i3 = 0;
        if (obj == VOTE_OPTIONS) {
            if (this.optionsCell == null) {
                this.optionsCell = this.parent.createView(R.layout.detail_vote_options, viewGroup, view);
                this.optionsView = (PollOptionListLayout) this.optionsCell.findViewById(R.id.poll_option_list);
                PollOptionListLayout pollOptionListLayout = this.optionsView;
                Blog blog = this.blog;
                pollOptionListLayout.setPoll(blog, (blog == null || blog.isContentAccessible()) ? null : Boolean.FALSE, false);
                PollOptionListLayout pollOptionListLayout2 = this.optionsView;
                pollOptionListLayout2.preview = this.preview;
                pollOptionListLayout2.setPreviewBlockListener(this.previewBlockListener);
                this.optionsView.setDarkTheme(this.darkTheme);
                PollOptionListLayout pollOptionListLayout3 = this.optionsView;
                pollOptionListLayout3.statSource = "Detail View";
                pollOptionListLayout3.loggingSource = LoggingSource.PostDetailView;
                String stringParam = this.fragment.getStringParam(CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
                this.optionsView.loggingOrigin = stringParam != null ? LoggingOrigin.valueOf(stringParam) : null;
            }
            if (showResult() && this.votersSummary == null && this.votersSummaryRequest == null) {
                sendVotersSummaryRequest();
            }
            PollOptionListLayout pollOptionListLayout4 = this.optionsView;
            if (showResult() && this.votersSummary != null) {
                z = true;
            }
            pollOptionListLayout4.setVotersSummary(z, this.votersSummary, true);
            return this.optionsCell;
        }
        if (obj == VOTE_NOT_ENOUGH_OPTIONS) {
            View viewCreateView = this.parent.createView(R.layout.detail_vote_text_banner, viewGroup, view);
            TextView textView = (TextView) viewCreateView;
            textView.setText(R.string.detail_vote_not_enough_options);
            textView.setTextColor(this.darkTheme ? -1 : -11184811);
            return viewCreateView;
        }
        if (obj != VOTE_TOOLBAR) {
            return null;
        }
        View viewCreateView2 = this.parent.createView(R.layout.detail_vote_toolbar, viewGroup, view);
        boolean zIsMine = isMine();
        Resources resources = this.parent.getContext().getResources();
        TextView textView2 = (TextView) viewCreateView2.findViewById(R.id.vote_add);
        textView2.setOnClickListener(this.parent.subviewClickListener);
        textView2.setText(zIsMine ? R.string.add : R.string.join);
        int i4 = R.color.button_text_gray_dark;
        if (zIsMine) {
            i = this.darkTheme ? R.color.button_text_gray_dark : R.color.button_text_gray;
        } else {
            i = R.color.button_text_light;
        }
        textView2.setTextColor(resources.getColorStateList(i));
        int i5 = R.drawable.button_round_normal_dark;
        if (zIsMine) {
            i2 = this.darkTheme ? R.drawable.button_round_normal_dark : R.drawable.button_round_normal;
        } else {
            i2 = R.drawable.button_round_blue_stroke;
        }
        textView2.setBackgroundResource(i2);
        if (this.blog.isPollEnded() || (!zIsMine && !isJoinEnabled())) {
            i3 = 8;
        }
        textView2.setVisibility(i3);
        TextView textView3 = (TextView) viewCreateView2.findViewById(R.id.vote_view);
        textView3.setOnClickListener(this.parent.subviewClickListener);
        textView3.setText(showResult() ? R.string.detail_vote_change_vote : R.string.detail_vote_view_result);
        textView3.setTextColor(resources.getColorStateList(this.darkTheme ? R.color.button_text_gray_dark : R.color.button_text_gray));
        textView3.setBackgroundResource(this.darkTheme ? R.drawable.button_round_normal_dark : R.drawable.button_round_normal);
        TextView textView4 = (TextView) viewCreateView2.findViewById(R.id.vote_actions);
        if (!this.darkTheme) {
            i4 = R.color.button_text_gray;
        }
        textView4.setTextColor(resources.getColorStateList(i4));
        if (!this.darkTheme) {
            i5 = R.drawable.button_round_normal;
        }
        textView4.setBackgroundResource(i5);
        textView4.setOnClickListener(this.parent.subviewClickListener);
        return viewCreateView2;
    }

    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj == VOTE_TOOLBAR && view2 != null && view2.getId() == R.id.vote_view) {
            if (showResult()) {
                if (this.blog.isPollEnded()) {
                    NVToast.makeText(this.parent.getContext(), R.string.detail_vote_poll_ended, 0).show();
                } else {
                    this.forceShowResult = false;
                    PollOptionListLayout pollOptionListLayout = this.optionsView;
                    if (pollOptionListLayout != null) {
                        pollOptionListLayout.setPoll(this.blog, Boolean.valueOf(showResult()), false);
                    }
                    abortVotersSummaryRequest();
                    this.parent.notifyDataSetChanged();
                }
            } else {
                List<PollOption> list = this.blog.polloptList;
                if (list != null) {
                    if (list != null && list.size() < 2) {
                        NVToast.makeText(this.parent.getContext(), R.string.detail_vote_not_enough_options_toast, 0).show();
                    } else if (isMine() || this.blog.isPollEnded() || this.blog.isPollVoted()) {
                        this.forceShowResult = true;
                        PollOptionListLayout pollOptionListLayout2 = this.optionsView;
                        if (pollOptionListLayout2 != null) {
                            pollOptionListLayout2.setPoll(this.blog, Boolean.valueOf(showResult()), true);
                        }
                        this.parent.notifyDataSetChanged();
                    } else {
                        NVToast.makeText(this.parent.getContext(), R.string.detail_vote_please_vote_first, 0).show();
                    }
                }
            }
            return true;
        }
        if (obj == VOTE_TOOLBAR && view2 != null && view2.getId() == R.id.vote_add) {
            if (this.blog.isPollEnded()) {
                NVToast.makeText(this.parent.getContext(), R.string.detail_vote_poll_ended, 0).show();
            } else if (isMine()) {
                if (polloptType() == 1) {
                    edit();
                } else {
                    Intent intent = new Intent(this.fragment.getContext(), (Class<?>) PlainPollPostActivity.class);
                    intent.putExtra("blog", JacksonUtils.writeAsString(this.blog));
                    this.fragment.startActivity(intent);
                }
            } else {
                if (polloptType() != 1 || Utils.shouldShowLoginPage(this.fragment)) {
                    return true;
                }
                Intent intent2 = FragmentWrapperActivity.intent(CatalogPickerFragment.class);
                intent2.putExtra("mine", true);
                intent2.putExtra("mode", 1);
                intent2.putExtra("title", this.fragment.getString(R.string.detail_vote_pick_to_join));
                this.fragment.startActivityForResult(intent2, REQUEST_POLL_PICK_ITEM);
            }
            return true;
        }
        if (obj != VOTE_TOOLBAR || view2 == null || view2.getId() != R.id.vote_actions) {
            return false;
        }
        ActionSheetDialog actionSheetDialog = new ActionSheetDialog(this.parent.getContext());
        actionSheetDialog.addItem(R.string.refresh, false);
        if ((polloptType() == 0 && isMine()) || (polloptType() == 1 && (isJoinEnabled() || isMine()))) {
            actionSheetDialog.addItem(R.string.detail_vote_poll_option_organizer, false);
        }
        actionSheetDialog.setOnClickListener(new DialogInterface.OnClickListener() { // from class: com.narvii.poll.PollAdapter.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                if (i2 == 0) {
                    PollAdapter.this.refresh();
                }
                if (i2 == 1) {
                    PollAdapter.this.organizer();
                }
            }
        });
        actionSheetDialog.show();
        return true;
    }

    public static void getCellTypes(List<DetailAdapter.CellType> list) {
        list.add(VOTE_OPTIONS);
        list.add(VOTE_NOT_ENOUGH_OPTIONS);
        list.add(VOTE_TOOLBAR);
    }

    public void refresh() {
        this.parent.refresh(0, null);
        if (showResult()) {
            sendVotersSummaryRequest();
        }
        NVToast.makeText(this.parent.getContext(), R.string.detail_vote_refreshing, 0).show();
    }

    public void edit() {
        new FeedHelper(this.parent).refreshAndEdit(this.blog);
    }

    public void organizer() {
        int iPolloptType = polloptType();
        if (iPolloptType == 1) {
            if (isMine()) {
                Intent intent = FragmentWrapperActivity.intent(PollOptionOrganizerFragment.class);
                intent.putExtra("id", this.blog.id());
                intent.putExtra("blog", JacksonUtils.writeAsString(this.blog));
                ((Activity) this.parent.getContext()).startActivityForResult(intent, REQUEST_POLL_ORGANIZER);
            } else {
                Intent intent2 = FragmentWrapperActivity.intent(MyParticipationListFragment.class);
                intent2.putExtra("id", this.blog.id());
                intent2.putExtra("blog", JacksonUtils.writeAsString(this.blog));
                ((Activity) this.parent.getContext()).startActivityForResult(intent2, REQUEST_POLL_ORGANIZER);
            }
        }
        if (iPolloptType == 0 && isMine()) {
            Intent intent3 = FragmentWrapperActivity.intent(PlainPollOrganizerListFragment.class);
            intent3.putExtra("id", this.blog.id());
            intent3.putExtra("blog", JacksonUtils.writeAsString(this.blog));
            ((Activity) this.parent.getContext()).startActivityForResult(intent3, REQUEST_POLL_ORGANIZER);
        }
    }

    @Override // com.narvii.poll.PollService.VoteListener
    public void onVoteFinish(Blog blog, String str) {
        if (this.votersSummary != null) {
            this.votersSummary = null;
            this.parent.notifyDataSetChanged();
        }
        Blog blog2 = this.blog;
        if (blog2 == null || !blog.blogId.equals(blog2.blogId)) {
            return;
        }
        this.blog = blog;
        this.forceShowResult = null;
        PollOptionListLayout pollOptionListLayout = this.optionsView;
        if (pollOptionListLayout != null) {
            pollOptionListLayout.forceShowResult = null;
        }
        this.parent.notifyDataSetChanged();
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        Item item;
        if (i == 62977 && i2 == -1 && intent != null && (item = (Item) JacksonUtils.readAs(intent.getStringExtra("item"), Item.class)) != null) {
            addCollectionPoll(item);
        }
        if (i == 62978) {
            sendVotersSummaryRequest();
        }
    }

    private void addCollectionPoll(Item item) {
        ProgressDialog progressDialog = new ProgressDialog(this.parent.getContext(), PollOptionResponse.class);
        progressDialog.errorMode = 1;
        progressDialog.successListener = new Callback<ApiResponse>() { // from class: com.narvii.poll.PollAdapter.3
            @Override // com.narvii.util.Callback
            public void call(ApiResponse apiResponse) {
                NVToast.makeText(PollAdapter.this.parent.getContext(), R.string.detail_vote_wait_for_approval, 1).show();
            }
        };
        progressDialog.show();
        ApiRequest.Builder builderPath = ApiRequest.builder().post().path("/blog/" + this.blog.id() + "/poll/option");
        builderPath.param("type", 1);
        builderPath.param("refObjectType", 2);
        builderPath.param("refObjectId", item.itemId);
        ((ApiService) this.parent.getService("api")).exec(builderPath.build(), progressDialog.dismissListener);
    }
}
