.class Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;
.super Ljava/lang/Object;
.source "LiveLayerOnlineBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;


# direct methods
.method constructor <init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 1162
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fromCBB:Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-wide/16 v5, 0x190

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v2, :cond_0

    .line 1164
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1165
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-static {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$500(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    .line 1167
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1168
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f99999a    # 1.2f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f99999a    # 1.2f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1169
    new-instance v9, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$1;

    invoke-direct {v9, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$1;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1181
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1182
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    const/4 v10, 0x0

    invoke-direct {v9, v10, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1183
    invoke-virtual {v9, v5, v6}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1184
    new-instance v5, Landroid/view/animation/AnimationSet;

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1185
    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    invoke-virtual {v5, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1187
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 1188
    new-instance v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;

    invoke-direct {v2, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$2;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    invoke-static {v1, v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    goto/16 :goto_0

    .line 1205
    :cond_0
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v2, :cond_2

    .line 1206
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c11

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1208
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f01002a

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v9

    iput-object v9, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    .line 1209
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    invoke-virtual {v2, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1210
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    const-wide/16 v9, 0x96

    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1211
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fadeoutAnim:Landroid/view/animation/Animation;

    invoke-static {v1, v2, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1214
    :cond_1
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-static {v2, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$500(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)V

    .line 1216
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    const v2, 0x7f090c10

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1217
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3f99999a    # 1.2f

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3f99999a    # 1.2f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    move-object v9, v2

    invoke-direct/range {v9 .. v17}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1218
    new-instance v9, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$3;

    invoke-direct {v9, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$3;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    invoke-virtual {v2, v9}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1230
    invoke-virtual {v2, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1231
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object v2, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->holoAnimation2:Landroid/view/animation/Animation;

    .line 1232
    new-instance v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;

    invoke-direct {v5, v0}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$4;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;)V

    invoke-static {v1, v2, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 1250
    :cond_2
    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->userJoinedView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1252
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1253
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f010029

    invoke-static {v2, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    .line 1254
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1255
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v1, v5, v6}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1256
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->foldGreenOval:Landroid/view/View;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dotFadeInAnimation:Landroid/view/animation/Animation;

    invoke-static {v2, v1, v4}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->startAnimation(Landroid/view/View;Landroid/view/animation/Animation;Landroid/view/animation/Animation$AnimationListener;)V

    .line 1261
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    iget v5, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->maxAvatarCount:I

    if-lt v2, v5, :cond_5

    .line 1263
    iget-boolean v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-eqz v2, :cond_4

    .line 1264
    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->removeViewAt(I)V

    .line 1265
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    sub-int/2addr v2, v8

    iput v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    :cond_4
    const/4 v1, 0x0

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    .line 1270
    :goto_1
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget v6, v5, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    add-int/2addr v6, v8

    iput v6, v5, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    .line 1272
    iget v5, v5, Lcom/narvii/livelayer/LiveLayerDataSource;->currentMembersCount:I

    sub-int/2addr v5, v8

    invoke-virtual {v2, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->onMembersCountChanged(I)V

    .line 1274
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-static {v5, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$600(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/model/User;)Landroid/view/View;

    move-result-object v2

    .line 1275
    iget-object v5, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v6, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->mainLayout:Lcom/narvii/livelayer/ws/ClipLayout;

    iget v5, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/2addr v5, v8

    invoke-virtual {v6, v2, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 1276
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v6, v5, Lcom/narvii/livelayer/LiveLayerOnlineBar;->recentAvatar:Lcom/narvii/widget/UserAvatarLayout;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->val$user:Lcom/narvii/model/User;

    invoke-static {v5, v6, v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$700(Lcom/narvii/livelayer/LiveLayerOnlineBar;Lcom/narvii/widget/UserAvatarLayout;Lcom/narvii/model/User;)V

    .line 1278
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    add-int/2addr v5, v8

    iput v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarCount:I

    .line 1280
    iget v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->avatarSize:I

    int-to-float v5, v5

    iget v6, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->overlapRatio:F

    sub-float/2addr v3, v6

    mul-float v5, v5, v3

    float-to-int v3, v5

    .line 1282
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1283
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->end()V

    .line 1286
    :cond_6
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-boolean v5, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->fold:Z

    if-nez v5, :cond_7

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v7, v5, v7

    aput v3, v5, v8

    .line 1287
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$802(Lcom/narvii/livelayer/LiveLayerOnlineBar;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 1288
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1290
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;

    invoke-direct {v5, v0, v1, v3}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$5;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;ZI)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1328
    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v3, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;

    invoke-direct {v3, v0, v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1$6;-><init>(Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1354
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$800(Lcom/narvii/livelayer/LiveLayerOnlineBar;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    .line 1356
    :cond_7
    invoke-static {v2}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$900(Lcom/narvii/livelayer/LiveLayerOnlineBar;)V

    .line 1359
    :goto_2
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1360
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->dataSource:Lcom/narvii/livelayer/LiveLayerDataSource;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerDataSource;->correctMembersCountRunnable:Ljava/lang/Runnable;

    const-wide/16 v5, 0x7d0

    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1363
    sget-object v1, Lcom/narvii/util/Utils;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v2, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1364
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iget-object v2, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->nextRunnable:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/narvii/livelayer/LiveLayerOnlineBar;->access$1000(Lcom/narvii/livelayer/LiveLayerOnlineBar;)I

    move-result v1

    int-to-long v5, v1

    invoke-static {v2, v5, v6}, Lcom/narvii/util/Utils;->postDelayed(Ljava/lang/Runnable;J)V

    .line 1366
    iget-object v1, v0, Lcom/narvii/livelayer/LiveLayerOnlineBar$7$1;->this$1:Lcom/narvii/livelayer/LiveLayerOnlineBar$7;

    iget-object v1, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar$7;->this$0:Lcom/narvii/livelayer/LiveLayerOnlineBar;

    iput-object v4, v1, Lcom/narvii/livelayer/LiveLayerOnlineBar;->animEndRunnable:Ljava/lang/Runnable;

    return-void
.end method
