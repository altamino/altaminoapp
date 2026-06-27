package com.narvii.item.property;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.android.exoplayer2.util.MimeTypes;
import com.narvii.amino.mastes.R;
import com.narvii.util.JacksonUtils;
import com.narvii.widget.FontAwesomeRatingBar;
import java.text.ParseException;
import java.util.Date;

/* loaded from: classes.dex */
public class ItemPropertyEditor extends LinearLayout {
    boolean afterLongClick;
    TextView date;
    Date dateValue;
    final int dividerHeight;
    EditText edit;
    GestureDetector gd;
    String legacyProtocolKey;
    View.OnLongClickListener longClickListener;
    final Paint paint;
    MotionEvent prevEvent;
    View rating;
    FontAwesomeRatingBar ratingCost;
    FontAwesomeRatingBar ratingHeart;
    FontAwesomeRatingBar ratingStar;
    int ratingValue;
    EditText title;
    String type;

    public ItemPropertyEditor(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.gd = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: com.narvii.item.property.ItemPropertyEditor.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
                ItemPropertyEditor itemPropertyEditor = ItemPropertyEditor.this;
                itemPropertyEditor.afterLongClick = true;
                MotionEvent motionEvent2 = itemPropertyEditor.prevEvent;
                if (motionEvent2 != null) {
                    motionEvent2.setAction(3);
                    ItemPropertyEditor itemPropertyEditor2 = ItemPropertyEditor.this;
                    ItemPropertyEditor.super.dispatchTouchEvent(itemPropertyEditor2.prevEvent);
                    ItemPropertyEditor.this.prevEvent.recycle();
                    ItemPropertyEditor.this.prevEvent = null;
                }
                ItemPropertyEditor itemPropertyEditor3 = ItemPropertyEditor.this;
                View.OnLongClickListener onLongClickListener = itemPropertyEditor3.longClickListener;
                if (onLongClickListener != null) {
                    onLongClickListener.onLongClick(itemPropertyEditor3);
                }
            }
        });
        setWillNotDraw(false);
        this.dividerHeight = context.getResources().getDimensionPixelSize(R.dimen.list_divider_height);
        this.paint = new Paint();
        this.paint.setColor(context.getResources().getColor(R.color.list_divider));
        this.paint.setStyle(Paint.Style.FILL);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.title = (EditText) findViewById(R.id.item_property_title);
        this.edit = (EditText) findViewById(R.id.item_property_text);
        this.date = (TextView) findViewById(R.id.item_property_date);
        this.rating = findViewById(R.id.item_property_rating);
        this.ratingStar = (FontAwesomeRatingBar) this.rating.findViewById(R.id.item_property_rating_star);
        this.ratingHeart = (FontAwesomeRatingBar) this.rating.findViewById(R.id.item_property_rating_heart);
        this.ratingCost = (FontAwesomeRatingBar) this.rating.findViewById(R.id.item_property_rating_cost);
    }

    @Override // android.view.View
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.longClickListener = onLongClickListener;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        MotionEvent motionEvent2 = this.prevEvent;
        if (motionEvent2 != null) {
            motionEvent2.recycle();
            this.prevEvent = null;
        }
        if (motionEvent.getAction() == 0) {
            this.afterLongClick = false;
            this.prevEvent = MotionEvent.obtain(motionEvent);
        } else if (motionEvent.getAction() == 1 || motionEvent.getAction() == 3) {
            this.afterLongClick = false;
        } else {
            this.prevEvent = MotionEvent.obtain(motionEvent);
        }
        this.gd.onTouchEvent(motionEvent);
        if (this.afterLongClick) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        canvas.drawRect(0.0f, getHeight() - this.dividerHeight, getWidth(), getHeight(), this.paint);
    }

    public void setItemProperty(JsonNode jsonNode) throws ParseException {
        int iRound = 0;
        this.legacyProtocolKey = JacksonUtils.nodeString(jsonNode, "legacyProtocolKey");
        this.title.setText(JacksonUtils.nodeString(jsonNode, "title"));
        Date date = null;
        setText(null);
        setDate(null);
        setRating(0);
        String strNodeString = JacksonUtils.nodeString(jsonNode, "type");
        setType(strNodeString);
        if ("levelStar".equals(strNodeString) || "levelHeart".equals(strNodeString) || "levelCost".equals(strNodeString)) {
            try {
                iRound = Math.round(Float.parseFloat(JacksonUtils.nodeString(jsonNode, "value")));
            } catch (Exception unused) {
            }
            setRating(iRound);
        } else if ("date".equals(strNodeString)) {
            try {
                date = ItemPropertyView.DATE_SERVER.parse(JacksonUtils.nodeString(jsonNode, "value"));
            } catch (Exception unused2) {
            }
            setDate(date);
        } else {
            setText(JacksonUtils.nodeString(jsonNode, "value"));
        }
    }

    public String getTitle() {
        return this.title.getText().toString();
    }

    public JsonNode getItemProperty() {
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        objectNodeCreateObjectNode.put("title", getTitle());
        if (!TextUtils.isEmpty(this.legacyProtocolKey)) {
            objectNodeCreateObjectNode.put("legacyProtocolKey", this.legacyProtocolKey);
        }
        if ("date".equals(getType())) {
            Date date = getDate();
            objectNodeCreateObjectNode.put("value", date != null ? ItemPropertyView.DATE_SERVER.format(date) : "");
            objectNodeCreateObjectNode.put("type", "date");
        } else if ("levelStar".equals(this.type)) {
            int rating = getRating();
            objectNodeCreateObjectNode.put("value", rating != 0 ? String.valueOf(rating) : "");
            objectNodeCreateObjectNode.put("type", "levelStar");
        } else if ("levelHeart".equals(this.type)) {
            int rating2 = getRating();
            objectNodeCreateObjectNode.put("value", rating2 != 0 ? String.valueOf(rating2) : "");
            objectNodeCreateObjectNode.put("type", "levelHeart");
        } else if ("levelCost".equals(this.type)) {
            int rating3 = getRating();
            objectNodeCreateObjectNode.put("value", rating3 != 0 ? String.valueOf(rating3) : "");
            objectNodeCreateObjectNode.put("type", "levelCost");
        } else {
            objectNodeCreateObjectNode.put("value", getText());
            objectNodeCreateObjectNode.put("type", MimeTypes.BASE_TYPE_TEXT);
        }
        return objectNodeCreateObjectNode;
    }

    public void setType(String str) {
        this.type = str;
        if ("levelStar".equals(str) || "levelHeart".equals(str) || "levelCost".equals(str)) {
            this.edit.setVisibility(8);
            this.date.setVisibility(8);
            this.rating.setVisibility(0);
            if ("levelStar".equals(str)) {
                this.ratingStar.setVisibility(0);
                this.ratingHeart.setVisibility(8);
                this.ratingCost.setVisibility(8);
                return;
            } else if ("levelHeart".equals(str)) {
                this.ratingStar.setVisibility(8);
                this.ratingHeart.setVisibility(0);
                this.ratingCost.setVisibility(8);
                return;
            } else {
                this.ratingStar.setVisibility(8);
                this.ratingHeart.setVisibility(8);
                this.ratingCost.setVisibility(0);
                return;
            }
        }
        if ("date".equals(str)) {
            this.edit.setVisibility(8);
            this.date.setVisibility(0);
            this.rating.setVisibility(8);
        } else {
            this.edit.setVisibility(0);
            this.date.setVisibility(8);
            this.rating.setVisibility(8);
        }
    }

    public String getType() {
        return this.type;
    }

    public void setText(String str) {
        this.edit.setText(str);
    }

    public String getText() {
        return this.edit.getText().toString();
    }

    public void setDate(Date date) {
        this.dateValue = date;
        if (date != null) {
            this.date.setText(ItemPropertyView.DATE_VIEW.format(date));
        } else {
            this.date.setText((CharSequence) null);
        }
    }

    public Date getDate() {
        return this.dateValue;
    }

    public void setRating(int i) {
        this.ratingValue = i;
        this.ratingStar.setRating(i);
        this.ratingHeart.setRating(i);
        this.ratingCost.setRating(i);
    }

    public int getRating() {
        return this.ratingValue;
    }

    public boolean validate() {
        if (this.title.getText().toString().trim().length() != 0 || TextUtils.isEmpty(JacksonUtils.nodeString(getItemProperty(), "value"))) {
            return true;
        }
        this.title.setError(getContext().getString(R.string.post_error_no_label));
        this.title.requestFocus();
        return false;
    }
}
