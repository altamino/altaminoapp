.class public Lcom/narvii/drawer/DrawerStoreButton;
.super Lcom/narvii/widget/NVImageView;
.source "DrawerStoreButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/narvii/widget/NVImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setClickable(Z)V

    const-string p1, "assets://drawer_store.gif"

    .line 16
    invoke-virtual {p0, p1}, Lcom/narvii/widget/NVImageView;->setImageUrl(Ljava/lang/String;)Z

    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 0

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method
