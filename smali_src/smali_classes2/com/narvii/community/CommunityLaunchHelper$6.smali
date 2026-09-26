.class Lcom/narvii/community/CommunityLaunchHelper$6;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 1
    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    const-string v1, "launch image fail "

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 13
    .line 14
    .line 15
    invoke-static {v1}, Lcom/narvii/community/CommunityLaunchHelper;->e(Lcom/narvii/community/CommunityLaunchHelper;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    iget-object v0, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 29
    .line 30
    iput-object p1, v0, Lcom/narvii/community/CommunityLaunchHelper;->launchImageError:Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lcom/narvii/community/CommunityLaunchHelper;->i(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 34
    return-void
.end method

.method public onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p2

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 9
    .line 10
    iget-object v0, p2, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    instance-of v1, v0, Lcom/narvii/widget/InnerIconDrawable;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/narvii/widget/InnerIconDrawable;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/narvii/community/CommunityLaunchHelper;->d(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    .line 20
    move-result-object p2

    .line 21
    .line 22
    .line 23
    invoke-interface {p2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 24
    move-result-object p2

    .line 25
    .line 26
    const/high16 v1, 0x42c80000    # 100.0f

    .line 27
    .line 28
    .line 29
    invoke-static {p2, v1}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 30
    move-result p2

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p2}, Lcom/narvii/widget/InnerIconDrawable;->setIconSize(I)V

    .line 34
    .line 35
    iget-object p2, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 38
    .line 39
    check-cast p2, Lcom/narvii/widget/InnerIconDrawable;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 43
    move-result-object p1

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lcom/narvii/widget/InnerIconDrawable;->setIconBitmap(Landroid/graphics/Bitmap;)V

    .line 47
    .line 48
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 49
    .line 50
    iget-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 51
    .line 52
    check-cast p2, Lcom/narvii/widget/InnerIconDrawable;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->d(Lcom/narvii/community/CommunityLaunchHelper;)Lcom/narvii/app/NVContext;

    .line 56
    move-result-object p1

    .line 57
    .line 58
    .line 59
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    .line 60
    move-result-object p1

    .line 61
    .line 62
    const/high16 v0, 0x41700000    # 15.0f

    .line 63
    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/narvii/util/Utils;->dpToPxInt(Landroid/content/Context;F)I

    .line 66
    move-result p1

    .line 67
    int-to-float p1, p1

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/narvii/widget/InnerIconDrawable;->setIconRadius(F)V

    .line 71
    .line 72
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 73
    .line 74
    iget-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    iput-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 p2, 0x0

    .line 78
    .line 79
    iput-object p2, p1, Lcom/narvii/community/CommunityLaunchHelper;->paddingLaunchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 80
    goto :goto_0

    .line 81
    .line 82
    :cond_0
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/android/volley/toolbox/ImageLoader$ImageContainer;->getBitmap()Landroid/graphics/Bitmap;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 90
    .line 91
    iput-object v0, p2, Lcom/narvii/community/CommunityLaunchHelper;->launchImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    .line 93
    :goto_0
    iget-object p1, p0, Lcom/narvii/community/CommunityLaunchHelper$6;->this$0:Lcom/narvii/community/CommunityLaunchHelper;

    .line 94
    .line 95
    .line 96
    invoke-static {p1}, Lcom/narvii/community/CommunityLaunchHelper;->i(Lcom/narvii/community/CommunityLaunchHelper;)V

    .line 97
    :cond_1
    return-void
.end method
