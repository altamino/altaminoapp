.class Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1$1;->this$2:Lcom/narvii/chat/video/overlay/AudienceAnimatedMemberBar$4$1;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    const v0, 0x3e19999a    # 0.15f

    cmpg-float v1, p1, v0

    const v2, 0x3f666666    # 0.9f

    if-gez v1, :cond_0

    div-float/2addr p1, v0

    mul-float/2addr p1, v2

    return p1

    :cond_0
    sub-float/2addr p1, v0

    const v0, 0x3f59999a    # 0.85f

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    mul-float/2addr v0, v2

    return v0
.end method
