package com.narvii.poll;

import android.content.Context;
import android.content.Intent;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVFragment;
import com.narvii.detail.FeedDetailFragment;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.image.ImageLoadTracker;
import com.narvii.influencer.InfluencerHelper;
import com.narvii.media.MediaGalleryOptionActivity;
import com.narvii.model.Blog;
import com.narvii.model.Feed;
import com.narvii.model.Item;
import com.narvii.model.Media;
import com.narvii.model.PollOption;
import com.narvii.modulization.entry.EntryManager;
import com.narvii.optionmenu.OptionMenuFragment;
import com.narvii.util.BlogUtils;
import com.narvii.util.Callback;
import com.narvii.util.FilterHelper;
import com.narvii.util.JacksonUtils;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.logging.LoggingOrigin;
import com.narvii.util.logging.LoggingSource;
import com.narvii.util.statistics.StatisticsService;
import com.narvii.util.statistics.constants.EventConstants;
import com.narvii.video.NVFullScreenVideoActivity;
import com.narvii.widget.CardView;
import com.narvii.widget.LongPushButton;
import com.narvii.widget.NVImageView;
import com.narvii.widget.SecretImageView;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
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

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    int polloptSize(Blog blog) {
        List<PollOption> list;
        if (blog == null || (list = blog.polloptList) == null || list.size() < 2) {
            return 0;
        }
        return blog.polloptList.size();
    }

    public void setPoll(Blog blog) {
        setPoll(blog, null, false);
    }

    public void setPreviewBlockListener(PollPreviewBlockListener pollPreviewBlockListener) {
        this.previewBlockListener = pollPreviewBlockListener;
    }

    public void setVoteCallback(Callback callback) {
        this.voteCallback = callback;
    }

    @Override // com.narvii.util.Callback
    public void call(LongPushButton longPushButton) {
        List<PollOption> list;
        NVContext nVContext = Utils.getNVContext(getContext());
        if (Utils.shouldShowLoginPage(nVContext) || new InfluencerHelper(nVContext).checkNeedShowFansOnlyHintDialog(this.poll, EventConstants.LikePost.PAGE_DETAILED_VIEW)) {
            return;
        }
        int iIntValue = ((Integer) longPushButton.getTag(R.id.index)).intValue();
        Blog blog = this.poll;
        if (blog != null && (list = blog.polloptList) != null && iIntValue < list.size()) {
            Callback callback = this.voteCallback;
            if (callback != null) {
                callback.call(this.poll);
            }
            PollOption pollOption = this.poll.polloptList.get(iIntValue);
            this.pollService.vote(this.poll, pollOption.polloptId, this.loggingSource, this.loggingOrigin);
            ((StatisticsService) nVContext.getService("statistics")).event("Votes on a Poll").source(this.statSource).param(EventConstants.CommentPost.TYPE, pollOption.type == 0 ? "Plain" : EventConstants.PostType.WIKI).userPropInc("Votes Poll Total");
        }
        updateView(true);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        RectF rectF;
        if (!this.blockTouch || ((rectF = this.notBlockArea) != null && rectF.contains(motionEvent.getX(), motionEvent.getY()))) {
            return super.onTouchEvent(motionEvent);
        }
        return true;
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

    public void setDarkTheme(boolean z6) {
        setBackgroundColor(z6 ? 855638016 : 134217728);
        TextView textView = this.text;
        if (textView != null) {
            textView.setTextColor(z6 ? -1 : -7829368);
        }
    }

    public void setPoll(Blog blog, Boolean bool, boolean z6) {
        this.poll = blog;
        this.forceShowResult = bool;
        if (this.pendingAnim && blog != null) {
            String str = blog.blogId;
            if (str.equals(str)) {
                this.pendingPoll = blog;
                return;
            }
        }
        if (this.pendingAnim) {
            removeCallbacks(this.pendingEnd);
            this.pendingAnim = false;
            this.pendingPoll = null;
        }
        updateView(z6);
    }

    public void setUpSnippetImageLoadTracker(ImageLoadTracker imageLoadTracker) {
        ViewGroup[] viewGroupArr = this.options;
        if (viewGroupArr != null) {
            for (ViewGroup viewGroup : viewGroupArr) {
                imageLoadTracker.addImageView((NVImageView) viewGroup.findViewById(R.id.image));
                ViewGroup viewGroup2 = (ViewGroup) viewGroup.findViewById(R.id.item_card);
                if (viewGroup2 != null) {
                    imageLoadTracker.addImageView((NVImageView) viewGroup2.findViewById(R.id.image_card));
                }
            }
        }
    }

    public void setVotersSummary(boolean z6, VotersSummaryResponse votersSummaryResponse, boolean z10) {
        this.voters = votersSummaryResponse;
        int iPolloptSize = polloptSize(this.poll);
        int i10 = 0;
        while (i10 < this.options.length) {
            Voter voter = null;
            PollOption pollOption = i10 < iPolloptSize ? this.poll.polloptList.get(i10) : null;
            if (pollOption != null && votersSummaryResponse != null) {
                voter = votersSummaryResponse.getVoter(pollOption.polloptId);
            }
            ViewGroup viewGroup = this.options[i10];
            viewGroup.findViewById(R.id.poll_option_voters).setVisibility(0);
            VotersLayout votersLayout = (VotersLayout) viewGroup.findViewById(R.id.poll_option_voters);
            votersLayout.setVoter(this.poll, voter, pollOption == null ? 0 : pollOption.votesCount);
            votersLayout.setExpand((!z6 || voter == null || voter.userList == null || new FilterHelper(Utils.getNVContext(getContext())).filter(voter.userList).size() != 0) ? z6 : false, z10);
            i10++;
        }
    }

    /* JADX WARN: Code duplicated, block: B:104:0x017c  */
    /* JADX WARN: Code duplicated, block: B:110:0x018a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:111:0x018c  */
    /* JADX WARN: Code duplicated, block: B:116:0x019a A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:122:0x01bc  */
    /* JADX WARN: Code duplicated, block: B:128:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:131:0x01f9  */
    /* JADX WARN: Code duplicated, block: B:134:0x0204  */
    /* JADX WARN: Code duplicated, block: B:135:0x0206  */
    /* JADX WARN: Code duplicated, block: B:140:0x020f  */
    /* JADX WARN: Code duplicated, block: B:143:0x021b  */
    /* JADX WARN: Code duplicated, block: B:144:0x021d  */
    /* JADX WARN: Code duplicated, block: B:147:0x022c  */
    /* JADX WARN: Code duplicated, block: B:150:0x0235  */
    /* JADX WARN: Code duplicated, block: B:151:0x023c  */
    /* JADX WARN: Code duplicated, block: B:153:0x024a  */
    /* JADX WARN: Code duplicated, block: B:154:0x024c  */
    /* JADX WARN: Code duplicated, block: B:156:0x024f  */
    /* JADX WARN: Code duplicated, block: B:157:0x0255  */
    /* JADX WARN: Multi-variable type inference failed */
    void updateView(boolean z6) {
        int i10;
        boolean z10;
        boolean z11;
        PollOption pollOption;
        int i11;
        Item item;
        String strTitle;
        Feed feed;
        int i12;
        int i13;
        LongPushButton longPushButton;
        int i14;
        int i15;
        VoteBar voteBar;
        int i16;
        boolean z12;
        long j6;
        List<PollOption> list;
        int i17;
        List<PollOption> list2;
        Blog blog = this.poll;
        int iPolloptSize = polloptSize(blog);
        int i18 = 0;
        if (blog == null || (list2 = blog.polloptList) == null) {
            i10 = 0;
        } else {
            Iterator<PollOption> it = list2.iterator();
            i10 = 0;
            while (it.hasNext()) {
                i10 += it.next().votesCount;
            }
        }
        Boolean bool = this.forceShowResult;
        boolean z13 = true;
        boolean zBooleanValue = bool != null ? bool.booleanValue() : blog.isPollEnded() || blog.isPollVoted();
        this.blockTouch = !zBooleanValue;
        int i19 = 0;
        while (true) {
            if (i19 >= iPolloptSize) {
                z10 = true;
                break;
            } else {
                if (blog.polloptList.get(i19).firstMedia() != null) {
                    z10 = false;
                    break;
                }
                i19++;
            }
        }
        if (this.autoAdjust && this.options.length != iPolloptSize) {
            LayoutInflater layoutInflaterFrom = LayoutInflater.from(getContext());
            ArrayList arrayList = new ArrayList(Arrays.asList(this.options));
            while (arrayList.size() < iPolloptSize) {
                ViewGroup viewGroup = (ViewGroup) layoutInflaterFrom.inflate(R.layout.poll_option_item, (ViewGroup) this, false);
                addView(viewGroup, arrayList.size());
                setupCell(viewGroup, arrayList.size());
                arrayList.add(viewGroup);
            }
            while (arrayList.size() > iPolloptSize) {
                removeView((View) arrayList.remove(arrayList.size() - 1));
            }
            this.options = (ViewGroup[]) arrayList.toArray(new ViewGroup[arrayList.size()]);
        }
        if (blog == null || (list = blog.polloptList) == null) {
            z11 = false;
            pollOption = null;
        } else {
            z11 = false;
            pollOption = null;
            for (PollOption pollOption2 : list) {
                int i20 = pollOption2.votesCount;
                if (i20 > 0) {
                    if (pollOption == null || i20 > (i17 = pollOption.votesCount)) {
                        z11 = false;
                        pollOption = pollOption2;
                    } else if (i20 == i17) {
                        z11 = true;
                    }
                }
            }
        }
        String votingOption = blog == null ? null : this.pollService.getVotingOption(blog.blogId);
        int i21 = 0;
        while (i21 < this.options.length) {
            PollOption pollOption3 = i21 < iPolloptSize ? blog.polloptList.get(i21) : null;
            boolean z14 = (pollOption3 == null || !Utils.isEqualsNotNull(pollOption3.polloptId, votingOption)) ? i18 : z13;
            ViewGroup viewGroup2 = this.options[i21];
            if (pollOption3 == null) {
                i18 = 8;
            }
            viewGroup2.setVisibility(i18);
            View viewFindViewById = viewGroup2.findViewById(R.id.image);
            viewFindViewById.setVisibility(((pollOption3 == null || pollOption3.type == 0) && !z10) ? 0 : 8);
            Media mediaFirstMedia = (pollOption3 == null || pollOption3.type != 0) ? null : pollOption3.firstMedia();
            if (viewFindViewById instanceof SecretImageView) {
                ((SecretImageView) viewFindViewById).setImageMedia(mediaFirstMedia, blog.needHidden);
            } else {
                ((NVImageView) viewFindViewById).setImageMedia(mediaFirstMedia);
            }
            View viewFindViewById2 = viewGroup2.findViewById(R.id.item_card);
            if (pollOption3 != null) {
                i11 = 1;
                int i22 = pollOption3.type == 1 ? 0 : 8;
                viewFindViewById2.setVisibility(i22);
                CardView cardView = (CardView) viewFindViewById2;
                if (pollOption3 == null && pollOption3.type == i11) {
                    item = (Item) pollOption3.refObject;
                } else {
                    item = null;
                }
                cardView.setItem(item);
                if (pollOption3 == null && pollOption3.type == 0) {
                    strTitle = pollOption3.title;
                } else {
                    strTitle = (pollOption3 == null && pollOption3.type == 1 && (feed = pollOption3.refObject) != null) ? feed.title() : null;
                }
                ((TextView) viewGroup2.findViewById(R.id.title1)).setText(strTitle);
                ((TextView) viewGroup2.findViewById(R.id.title2)).setText(strTitle);
                if (z11 && pollOption3 == pollOption) {
                    i12 = 1;
                } else {
                    i12 = 0;
                }
                ((TextView) viewGroup2.findViewById(R.id.title2)).setTypeface(Typeface.defaultFromStyle(i12));
                ((TextView) viewGroup2.findViewById(R.id.vote_bar_value)).setTypeface(Typeface.defaultFromStyle(i12));
                View viewFindViewById3 = viewGroup2.findViewById(R.id.check);
                if (pollOption3 != null || pollOption3.votedValue <= 0) {
                    i13 = 8;
                } else {
                    i13 = 0;
                }
                viewFindViewById3.setVisibility(i13);
                longPushButton = (LongPushButton) viewGroup2.findViewById(R.id.push_btn);
                if (longPushButton != null) {
                    longPushButton.setAllowLongPushListener(new LongPushButton.AllowLongPushListener() { // from class: com.narvii.poll.PollOptionListLayout.2
                        @Override // com.narvii.widget.LongPushButton.AllowLongPushListener
                        public boolean allowLongPush() {
                            PollOptionListLayout pollOptionListLayout = PollOptionListLayout.this;
                            if (pollOptionListLayout.preview) {
                                PollPreviewBlockListener pollPreviewBlockListener = pollOptionListLayout.previewBlockListener;
                                if (pollPreviewBlockListener != null) {
                                    pollPreviewBlockListener.onPreviewBlocked();
                                } else {
                                    NVToast.makeText(pollOptionListLayout.getContext(), R.string.this_is_preview, 0).show();
                                }
                            }
                            return !PollOptionListLayout.this.preview;
                        }
                    });
                }
                if (zBooleanValue) {
                    i14 = 4;
                } else {
                    i14 = 0;
                }
                setViewVisibility(longPushButton, i14, z6);
                if (z6 || z14 != 0) {
                    longPushButton.lock(z14);
                }
                View viewFindViewById4 = viewGroup2.findViewById(R.id.progress);
                if (z14 != 0) {
                    i15 = 0;
                } else {
                    i15 = 4;
                }
                setViewVisibility(viewFindViewById4, i15, z6);
                voteBar = (VoteBar) viewGroup2.findViewById(R.id.vote_bar);
                setViewVisibility(voteBar, zBooleanValue ? 0 : 4, z6);
                boolean z15 = zBooleanValue;
                if (pollOption3 == null) {
                    i16 = 0;
                    voteBar.setValue(false, 0.0f, 0L);
                    i10 = i10;
                } else {
                    i16 = 0;
                    float f = (pollOption3.votesCount * 1.0f) / i10;
                    if (pollOption3.votedValue > 0) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (z6) {
                        j6 = 500;
                    } else {
                        j6 = 0;
                    }
                    voteBar.setValue(z12, f, j6);
                }
                i21++;
                zBooleanValue = z15;
                i10 = i10;
                i18 = i16;
                iPolloptSize = iPolloptSize;
                z13 = true;
            } else {
                i11 = 1;
            }
            viewFindViewById2.setVisibility(i22);
            CardView cardView2 = (CardView) viewFindViewById2;
            if (pollOption3 == null) {
                item = null;
            } else {
                item = null;
            }
            cardView2.setItem(item);
            if (pollOption3 == null) {
                if (pollOption3 == null) {
                }
            } else if (pollOption3 == null) {
            }
            ((TextView) viewGroup2.findViewById(R.id.title1)).setText(strTitle);
            ((TextView) viewGroup2.findViewById(R.id.title2)).setText(strTitle);
            if (z11) {
                i12 = 0;
            } else {
                i12 = 0;
            }
            ((TextView) viewGroup2.findViewById(R.id.title2)).setTypeface(Typeface.defaultFromStyle(i12));
            ((TextView) viewGroup2.findViewById(R.id.vote_bar_value)).setTypeface(Typeface.defaultFromStyle(i12));
            View viewFindViewById5 = viewGroup2.findViewById(R.id.check);
            if (pollOption3 != null) {
                i13 = 8;
            } else {
                i13 = 8;
            }
            viewFindViewById5.setVisibility(i13);
            longPushButton = (LongPushButton) viewGroup2.findViewById(R.id.push_btn);
            if (longPushButton != null) {
                longPushButton.setAllowLongPushListener(new LongPushButton.AllowLongPushListener() { // from class: com.narvii.poll.PollOptionListLayout.2
                    @Override // com.narvii.widget.LongPushButton.AllowLongPushListener
                    public boolean allowLongPush() {
                        PollOptionListLayout pollOptionListLayout = PollOptionListLayout.this;
                        if (pollOptionListLayout.preview) {
                            PollPreviewBlockListener pollPreviewBlockListener = pollOptionListLayout.previewBlockListener;
                            if (pollPreviewBlockListener != null) {
                                pollPreviewBlockListener.onPreviewBlocked();
                            } else {
                                NVToast.makeText(pollOptionListLayout.getContext(), R.string.this_is_preview, 0).show();
                            }
                        }
                        return !PollOptionListLayout.this.preview;
                    }
                });
            }
            if (zBooleanValue) {
                i14 = 4;
            } else {
                i14 = 0;
            }
            setViewVisibility(longPushButton, i14, z6);
            if (z6) {
                longPushButton.lock(z14);
            } else {
                longPushButton.lock(z14);
            }
            View viewFindViewById6 = viewGroup2.findViewById(R.id.progress);
            if (z14 != 0) {
                i15 = 0;
            } else {
                i15 = 4;
            }
            setViewVisibility(viewFindViewById6, i15, z6);
            voteBar = (VoteBar) viewGroup2.findViewById(R.id.vote_bar);
            setViewVisibility(voteBar, zBooleanValue ? 0 : 4, z6);
            boolean z16 = zBooleanValue;
            if (pollOption3 == null) {
                i16 = 0;
                voteBar.setValue(false, 0.0f, 0L);
                i10 = i10;
            } else {
                i16 = 0;
                float f6 = (pollOption3.votesCount * 1.0f) / i10;
                if (pollOption3.votedValue > 0) {
                    z12 = true;
                } else {
                    z12 = false;
                }
                if (z6) {
                    j6 = 500;
                } else {
                    j6 = 0;
                }
                voteBar.setValue(z12, f6, j6);
            }
            i21++;
            zBooleanValue = z16;
            i10 = i10;
            i18 = i16;
            iPolloptSize = iPolloptSize;
            z13 = true;
        }
        this.text.setText(BlogUtils.getPollDurationText(blog, getContext()));
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

    static void setViewVisibility(View view, int i10, boolean z6) {
        if (view.getVisibility() != i10) {
            view.setVisibility(i10);
            if (z6) {
                if (i10 == 0) {
                    view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_in));
                    return;
                } else {
                    view.startAnimation(AnimationUtils.loadAnimation(view.getContext(), R.anim.fade_out));
                    return;
                }
            }
            view.clearAnimation();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.pollService.listeners.addListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (new InfluencerHelper(Utils.getNVContext(getContext())).checkNeedShowFansOnlyHintDialog(this.poll, EventConstants.LikePost.PAGE_DETAILED_VIEW)) {
            return;
        }
        if (view.getId() == R.id.image) {
            PollOption pollOption = this.poll.polloptList.get(((Integer) view.getTag(R.id.index)).intValue());
            if (pollOption.firstMedia() == null) {
                NVToast.makeText(getContext(), R.string.media_image_picker_no_image, 0).show();
            } else {
                Media mediaFirstMedia = pollOption.firstMedia();
                if (mediaFirstMedia.isVideo()) {
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), NVFullScreenVideoActivity.intent(mediaFirstMedia, this.poll, (Class<? extends NVFragment>) OptionMenuFragment.class));
                } else {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(mediaFirstMedia);
                    Intent intent = new Intent(getContext(), (Class<?>) MediaGalleryOptionActivity.class);
                    intent.putExtra("parent", JacksonUtils.writeAsString(this.poll));
                    intent.putExtra("parentClass", Feed.class);
                    intent.putExtra("list", JacksonUtils.writeAsString(arrayList));
                    intent.putExtra("position", 0);
                    safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent);
                }
            }
        }
        if (view.getId() == R.id.item_card) {
            Intent intent2 = FeedDetailFragment.intent(this.poll.polloptList.get(((Integer) view.getTag(R.id.index)).intValue()).refObject);
            intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Poll");
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(getContext(), intent2);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.pollService.listeners.removeListener(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        ArrayList arrayList = new ArrayList();
        int childCount = getChildCount();
        boolean z6 = false;
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = getChildAt(i10);
            if (childAt.getId() != R.id.poll_option_item_1 && childAt.getId() != R.id.poll_option_item_2 && childAt.getId() != R.id.poll_option_item_3 && childAt.getId() != R.id.poll_option_item_4 && childAt.getId() != R.id.poll_option_item_5) {
                if (childAt.getId() == R.id.poll_text) {
                    this.text = (TextView) childAt;
                }
            } else {
                setupCell(childAt, arrayList.size());
                arrayList.add((ViewGroup) childAt);
            }
        }
        ViewGroup[] viewGroupArr = (ViewGroup[]) arrayList.toArray(new ViewGroup[arrayList.size()]);
        this.options = viewGroupArr;
        if (viewGroupArr.length == 0) {
            z6 = true;
        }
        this.autoAdjust = z6;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        int height;
        super.onSizeChanged(i10, i11, i12, i13);
        int height2 = getHeight();
        TextView textView = this.text;
        if (textView != null) {
            height = textView.getHeight();
        } else {
            height = 0;
        }
        this.notBlockArea = new RectF(0.0f, ((height2 - height) - getPaddingBottom()) - getResources().getDimensionPixelSize(R.dimen.poll_option_item_padding_bottom), getWidth(), getHeight());
    }

    void setupCell(View view, int i10) {
        LongPushButton longPushButton = (LongPushButton) view.findViewById(R.id.push_btn);
        longPushButton.setTag(R.id.index, Integer.valueOf(i10));
        longPushButton.longPressCallback = this;
        View viewFindViewById = view.findViewById(R.id.image);
        viewFindViewById.setTag(R.id.index, Integer.valueOf(i10));
        viewFindViewById.setOnClickListener(this);
        View viewFindViewById2 = view.findViewById(R.id.item_card);
        viewFindViewById2.setTag(R.id.index, Integer.valueOf(i10));
        viewFindViewById2.setOnClickListener(this);
    }
}
