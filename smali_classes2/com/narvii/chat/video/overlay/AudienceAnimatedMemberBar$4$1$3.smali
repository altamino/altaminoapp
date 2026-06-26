.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;
.super Ljava/lang/Object;
.source "AudienceAnimatedMemberBar.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;


# direct methods
.method constructor <init>(Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$3;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr p1, v1

    mul-float p1, p1, p1

    const/high16 v1, 0x40800000    # 4.0f

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
