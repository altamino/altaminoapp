package com.narvii.feed;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.model.Feed;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class FeatureLayoutImpressionCollector extends ImpressionCollector<Feed> {
    public FeatureLayoutImpressionCollector(Class cls) {
        super(cls);
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        Object tag = view.getTag(R.id._feed_single);
        Boolean bool = Boolean.TRUE;
        if (tag == bool) {
            addImpressionCell(view, list);
            return;
        }
        if (view.getTag(R.id._feed_column_2) == bool) {
            ViewGroup viewGroup = (ViewGroup) view.findViewById(R.id.feed_column_left);
            if (viewGroup.getChildCount() != 0) {
                addImpressionCell(viewGroup.getChildAt(0), list);
            }
            ViewGroup viewGroup2 = (ViewGroup) view.findViewById(R.id.feed_column_right);
            if (viewGroup2.getChildCount() != 0) {
                addImpressionCell(viewGroup2.getChildAt(0), list);
            }
        }
    }
}
