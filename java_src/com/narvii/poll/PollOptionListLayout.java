package com.narvii.poll;

import android.content.Context;
import android.content.Intent;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.image.ImageLoadTracker;
import com.narvii.influencer.InfluencerHelper;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.poll.PollService;
import com.narvii.scene.poll.ScenePollPlayView;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.LongPushButton;
import com.narvii.widget.NVImageView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class PollOptionListLayout extends LinearLayout implements PollService.VoteListener, Callback<LongPushButton>, View.OnClickListener {
    boolean autoAdjust;
    boolean blockTouch;
    Boolean forceShowResult;
    public LoggingOrigin loggingOrigin;
    public LoggingSource loggingSource;
    RectF notBlockArea;
    ViewGroup[] options;
    boolean pendingAnim;
    final Runnable pendingEnd;
    Blog pendingPoll;
    Blog poll;
    PollService pollService;
    public boolean preview;
    PollPreviewBlockListener previewBlockListener;
    public String statSource;
    TextView text;
    Callback voteCallback;
    VotersSummaryResponse voters;

    public interface PollPreviewBlockListener {
        void onPreviewBlocked();
    }

    public void setPreviewBlockListener(PollPreviewBlockListener pollPreviewBlockListener) {
        this.previewBlockListener = pollPreviewBlockListener;
    }

    public PollOptionListLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.pendingEnd = new Runnable() { // from class: com.narvii.poll.PollOptionListLayout.1
            @Override // java.lang.Runnable
            public void run() {
                PollOptionListLayout pollOptionListLayout = PollOptionListLayout.this;
                pollOptionListLayout.pendingAnim = false;
                Blog blog = pollOptionListLayout.pendingPoll;
                if (blog != null) {
                    pollOptionListLayout.poll = blog;
                    pollOptionListLayout.pendingPoll = null;
                    pollOptionListLayout.updateView(false);
                }
            }
        };
        this.pollService = (PollService) Utils.getNVContext(context).getService(EntryManager.ENTRY_POLL);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt.getId() == R.id.poll_option_item) {
                setupCell(childAt, arrayList.size());
                arrayList.add((ViewGroup) childAt);
            } else if (childAt.getId() == R.id.poll_text) {
                this.text = (TextView) childAt;
            }
        }
        this.options = (ViewGroup[]) arrayList.toArray(new ViewGroup[arrayList.size()]);
        this.autoAdjust = this.options.length == 0;
    }

    void setupCell(View view, int i) {
        LongPushButton longPushButton = (LongPushButton) view.findViewById(R.id.push_btn);
        longPushButton.setTag(R.id.index, Integer.valueOf(i));
        longPushButton.longPressCallback = this;
        View viewFindViewById = view.findViewById(R.id.image);
        viewFindViewById.setTag(R.id.index, Integer.valueOf(i));
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.item_card);
        viewFindViewById2.setTag(R.id.index, Integer.valueOf(i));
        viewFindViewById2.setOnClickListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.pollService.listeners.addListener(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.pollService.listeners.removeListener(this);
    }

    public void setVoteCallback(Callback callback) {
        this.voteCallback = callback;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        RectF rectF;
        if (!this.blockTouch || ((rectF = this.notBlockArea) != null && rectF.contains(motionEvent.getX(), motionEvent.getY()))) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int height = getHeight();
        this.notBlockArea = new RectF(0.0f, ((height - (this.text != null ? r4.getHeight() : 0)) - getPaddingBottom()) - getResources().getDimensionPixelSize(R.dimen.poll_option_item_padding_bottom), getWidth(), getHeight());
    }

    @Override // com.narvii.poll.PollService.VoteListener
    public void onVoteFinish(Blog blog, String str) {
        Blog blog2 = this.poll;
        if (blog2 == null || !blog.blogId.equals(blog2.blogId)) {
            return;
        }
        this.poll = blog;
        updateView(true);
        this.pendingAnim = true;
        postDelayed(this.pendingEnd, 1000L);
    }

    @Override // com.narvii.poll.PollService.VoteListener
    public void onVoteFail(Blog blog, String str, String str2) {
        Blog blog2 = this.poll;
        if (blog2 == null || !blog.blogId.equals(blog2.blogId)) {
            return;
        }
        for (ViewGroup viewGroup : this.options) {
            ((LongPushButton) viewGroup.findViewById(R.id.push_btn)).reset();
        }
        updateView(false);
        NVToast.makeText(getContext(), str2, 0).show();
    }

    public void setPoll(Blog blog) {
        setPoll(blog, null, false);
    }

    public void setPoll(Blog blog, Boolean bool, boolean z) {
        Blog blog2;
        this.poll = blog;
        this.forceShowResult = bool;
        if (this.pendingAnim && (blog2 = this.poll) != null && blog2.blogId.equals(blog.blogId)) {
            this.pendingPoll = blog;
            return;
        }
        if (this.pendingAnim) {
            removeCallbacks(this.pendingEnd);
            this.pendingAnim = false;
            this.pendingPoll = null;
        }
        updateView(z);
    }

    public void setDarkTheme(boolean z) {
        setBackgroundColor(z ? 855638016 : 134217728);
        TextView textView = this.text;
        if (textView != null) {
            textView.setTextColor(z ? -1 : -7829368);
        }
    }

    int polloptSize(Blog blog) {
        List<PollOption> list;
        if (blog == null || (list = blog.polloptList) == null || list.size() < 2) {
            return 0;
        }
        return blog.polloptList.size();
    }

    public void setVotersSummary(boolean z, VotersSummaryResponse votersSummaryResponse, boolean z2) {
        this.voters = votersSummaryResponse;
        int iPolloptSize = polloptSize(this.poll);
        int i = 0;
        while (i < this.options.length) {
            Voter voter = null;
            PollOption pollOption = i < iPolloptSize ? this.poll.polloptList.get(i) : null;
            if (pollOption != null && votersSummaryResponse != null) {
                voter = votersSummaryResponse.getVoter(pollOption.polloptId);
            }
            ViewGroup viewGroup = this.options[i];
            viewGroup.findViewById(R.id.poll_option_voters).setVisibility(0);
            VotersLayout votersLayout = (VotersLayout) viewGroup.findViewById(R.id.poll_option_voters);
            votersLayout.setVoter(this.poll, voter, pollOption == null ? 0 : pollOption.votesCount);
            votersLayout.setExpand((!z || voter == null || voter.userList == null || new FilterHelper(Utils.getNVContext(getContext())).filter(voter.userList).size() != 0) ? z : false, z2);
            i++;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0189  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0205  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x023c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    void updateView(boolean r21) {
        /*
            Method dump skipped, instructions count: 629
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.poll.PollOptionListLayout.updateView(boolean):void");
    }

    static void setViewVisibility(View view, int i, boolean z) {
        if (view.getVisibility() != i) {
            view.setVisibility(i);
            if (!z) {
                view.clearAnimation();
            } else if (i == 0) {
                view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_in));
            } else {
                view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_out));
            }
        }
    }

    @Override // com.narvii.util.Callback
    public void call(LongPushButton longPushButton) {
        List<PollOption> list;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (Utils.shouldShowLoginPage(nVContext) || new InfluencerHelper(nVContext).checkNeedShowFansOnlyHintDialog(this.poll, "Page Detailed View")) {
            return;
        }
        int iIntValue = ((Integer) longPushButton.getTag(R.id.index)).intValue();
        Blog blog = this.poll;
        if (blog != null && (list = blog.polloptList) != null && iIntValue < list.size()) {
            Callback callback = this.voteCallback;
            if (callback != null) {
                callback.call(this.poll);
            }
            this.pollService.vote(this.poll, this.poll.polloptList.get(iIntValue).polloptId, this.loggingSource, this.loggingOrigin);
        }
        updateView(true);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (new InfluencerHelper(Utils.getNVContext(getContext())).checkNeedShowFansOnlyHintDialog(this.poll, "Page Detailed View")) {
            return;
        }
        if (view.getId() == R.id.image) {
            PollOption pollOption = this.poll.polloptList.get(((Integer) view.getTag(R.id.index)).intValue());
            if (pollOption.firstMedia() == null) {
                NVToast.makeText(getContext(), R.string.media_image_picker_no_image, 0).show();
            } else {
                Media mediaFirstMedia = pollOption.firstMedia();
                if (mediaFirstMedia.isVideo()) {
                    getContext().startActivity(NVFullScreenVideoActivity.intent(mediaFirstMedia, this.poll, (Class<? extends NVFragment>) OptionMenuFragment.class));
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(mediaFirstMedia);
                    Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                    intent.putExtra("parent", JacksonUtils.writeAsString(this.poll));
                    intent.putExtra("parentClass", Feed.class);
                    intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
                    intent.putExtra("position", 0);
                    getContext().startActivity(intent);
                }
            }
        }
        if (view.getId() == R.id.item_card) {
            Intent intent2 = FeedDetailFragment.intent(this.poll.polloptList.get(((Integer) view.getTag(R.id.index)).intValue()).refObject);
            intent2.putExtra("Source", ScenePollPlayView.AREA_POLL);
            getContext().startActivity(intent2);
        }
    }

    public void setUpSnippetImageLoadTracker(ImageLoadTracker imageLoadTracker) {
        ViewGroup[] viewGroupArr = this.options;
        if (viewGroupArr != null) {
            for (ViewGroup viewGroup : viewGroupArr) {
                imageLoadTracker.addImageView((NVImageView) viewGroup.findViewById(R.id.image));
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.item_card);
                if (viewGroup2 != null) {
                    imageLoadTracker.addImageView((NVImageView) viewGroup2.findViewById(R.id.image));
                }
            }
        }
    }
}
