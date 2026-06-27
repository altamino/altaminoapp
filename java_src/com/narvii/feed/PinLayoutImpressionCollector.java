package com.narvii.feed;

import android.view.View;
import com.narvii.amino.mastes.R;
import com.narvii.logging.Impression.ImpressionCollector;
import com.narvii.model.Feed;
import java.util.List;

/* loaded from: classes2.dex */
public class PinLayoutImpressionCollector extends ImpressionCollector<Feed> {
    public PinLayoutImpressionCollector(Class<Feed> cls) {
        super(cls);
    }

    @Override // com.narvii.logging.Impression.ImpressionCollector
    protected void findImpressionObject(View view, List list) {
        if (view.getTag(R.id._feed_pin) == Boolean.TRUE) {
            addImpressionCell(view, list);
        }
    }
}
