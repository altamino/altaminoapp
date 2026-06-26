.class Lcom/narvii/community/CommunityLaunchHelper$6;
.super Ljava/lang/Object;
.source "CommunityLaunchHelper.java"

# interfaces
.implements Lcom/android/volley/toolbox/ImageLoader$ImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/community/CommunityLaunchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/community/CommunityLaunchHelper;


# direct methods
.method constructor <init>(Lcom/narvii/community/CommunityLaunchHelper;)V
    .locals 0

    .line 617
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch image fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->access$700(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 638
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iput-object p1, v0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 639
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->access$800(Lcom/narvii/community/CommunityLaunchHelper;)V

    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .line 620
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 622
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object v0, p2, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/narvii/widget/InnerIconDrawable;

    if-eqz v1, :cond_0

    .line 623
    check-cast v0, Lcom/narvii/widget/InnerIconDrawable;

    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object p2

    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p2

    const/high16 v1, 0x42c80000    # 100.0f

    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/narvii/widget/InnerIconDrawable;->setIconSize(I)V

    .line 624
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p2, p2, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p2, Lcom/narvii/widget/InnerIconDrawable;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/InnerIconDrawable;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 625
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    check-cast p2, Lcom/narvii/widget/InnerIconDrawable;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$100(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x41700000    # 15.0f

    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Lcom/narvii/widget/InnerIconDrawable;->setIconRadius(F)V

    .line 626
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    iget-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    .line 627
    iput-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p2, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 631
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->access$800(Lcom/narvii/community/CommunityLaunchHelper;)V

    :cond_1
    return-void
.end method
