package com.narvii.livelayer;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.app.NVFragment;
import com.narvii.widget.CommentLiveIndicator;
import com.narvii.widget.PollLiveIndicator;

/* JADX INFO: loaded from: classes11.dex */
public class LiverLayerAnimationTestFragment extends NVFragment implements View.OnClickListener {
    Button btnCommentTest;
    Button btnPollTest;
    CommentLiveIndicator commentLiveIndicator;
    PollLiveIndicator pollLiveIndicator;

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.testComment /* 2131365451 */:
                this.commentLiveIndicator.startAnimation();
                break;
            case R.id.testPoll /* 2131365452 */:
                this.pollLiveIndicator.startAnimation();
                break;
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        return layoutInflater.inflate(R.layout.fragment_liverlayer_animation_test, viewGroup, false);
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.pollLiveIndicator = (PollLiveIndicator) view.findViewById(R.id.poll_live_indicator);
        this.commentLiveIndicator = (CommentLiveIndicator) view.findViewById(R.id.comment_indicator);
        Button button = (Button) view.findViewById(R.id.testComment);
        this.btnCommentTest = button;
        button.setOnClickListener(this);
        Button button2 = (Button) view.findViewById(R.id.testPoll);
        this.btnPollTest = button2;
        button2.setOnClickListener(this);
    }
}
