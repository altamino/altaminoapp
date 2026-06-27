package com.narvii.livelayer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVFragment;
import com.narvii.widget.CommentLiveIndicator;
import com.narvii.widget.PollLiveIndicator;

/* loaded from: classes3.dex */
public class LiverLayerAnimationTestFragment extends NVFragment implements View.OnClickListener {
    Button btnCommentTest;
    Button btnPollTest;
    CommentLiveIndicator commentLiveIndicator;
    PollLiveIndicator pollLiveIndicator;

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_liverlayer_animation_test, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.pollLiveIndicator = (PollLiveIndicator) view.findViewById(R.id.poll_live_indicator);
        this.commentLiveIndicator = (CommentLiveIndicator) view.findViewById(R.id.comment_indicator);
        this.btnCommentTest = (Button) view.findViewById(R.id.testComment);
        this.btnCommentTest.setOnClickListener(this);
        this.btnPollTest = (Button) view.findViewById(R.id.testPoll);
        this.btnPollTest.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.testComment /* 2131299161 */:
                this.commentLiveIndicator.startAnimation();
                break;
            case R.id.testPoll /* 2131299162 */:
                this.pollLiveIndicator.startAnimation();
                break;
        }
    }
}
