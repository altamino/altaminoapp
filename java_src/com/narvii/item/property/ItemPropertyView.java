package com.narvii.item.property;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.narvii.amino.mastes.R;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.FontAwesomeRatingBar;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* loaded from: classes.dex */
public class ItemPropertyView extends LinearLayout {
    static final DateFormat DATE_SERVER = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
    static final DateFormat DATE_VIEW = DateFormat.getDateInstance(1);
    int layoutId;
    JsonNode prop;

    public ItemPropertyView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void setLayoutId(int i) {
        if (i == 0) {
            this.layoutId = i;
            removeAllViews();
        } else if (i != this.layoutId) {
            removeAllViews();
            LayoutInflater.from(getContext()).inflate(i, (ViewGroup) this, true);
            this.layoutId = i;
        }
    }

    public void set(JsonNode jsonNode) {
        this.prop = jsonNode;
        String strNodeString = JacksonUtils.nodeString(jsonNode, "type");
        String strNodeString2 = JacksonUtils.nodeString(jsonNode, "title");
        String strNodeString3 = JacksonUtils.nodeString(jsonNode, "value");
        if ("date".equals(JacksonUtils.nodeString(jsonNode, "type"))) {
            setLayoutId(R.layout.item_property_text);
            try {
                strNodeString3 = DATE_VIEW.format(DATE_SERVER.parse(strNodeString3));
            } catch (Exception unused) {
            }
            ((TextView) findViewById(R.id.item_property_value)).setText(strNodeString3);
        } else if ("levelHeart".equals(strNodeString) || "levelStar".equals(strNodeString) || "levelCost".equals(strNodeString)) {
            if ("levelHeart".equals(strNodeString)) {
                setLayoutId(R.layout.item_property_rating_heart);
            } else if ("levelStar".equals(strNodeString)) {
                setLayoutId(R.layout.item_property_rating_star);
            } else {
                setLayoutId(R.layout.item_property_rating_cost);
            }
            try {
                ((FontAwesomeRatingBar) findViewById(R.id.item_property_value)).setRating(Math.round(Float.parseFloat(strNodeString3)));
            } catch (Exception unused2) {
                setLayoutId(R.layout.item_property_text);
                ((TextView) findViewById(R.id.item_property_value)).setText(strNodeString3);
            }
        } else {
            setLayoutId(R.layout.item_property_text);
            ((TextView) findViewById(R.id.item_property_value)).setText(strNodeString3);
        }
        TextView textView = (TextView) findViewById(R.id.item_property_title);
        if (textView != null) {
            textView.setText(strNodeString2);
        }
    }
}
