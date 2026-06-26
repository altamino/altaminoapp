.class public interface abstract Lcom/narvii/widget/ShareMediaBar$ShareMediaClickListener;
.super Ljava/lang/Object;
.source "ShareMediaBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/ShareMediaBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ShareMediaClickListener"
.end annotation


# virtual methods
.method public abstract onShareMediaClicked(Lcom/narvii/app/NVContext;Lcom/narvii/model/Media;Lcom/narvii/model/NVObject;Ljava/util/List;Lcom/narvii/share/BaseShareButtonRepost;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/narvii/app/NVContext;",
            "Lcom/narvii/model/Media;",
            "Lcom/narvii/model/NVObject;",
            "Ljava/util/List<",
            "Lcom/narvii/model/Media;",
            ">;",
            "Lcom/narvii/share/BaseShareButtonRepost;",
            ")V"
        }
    .end annotation
.end method
