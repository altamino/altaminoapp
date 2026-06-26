.class Lcom/narvii/widget/UserAvatarLayout$1;
.super Ljava/lang/Object;
.source "UserAvatarLayout.java"

# interfaces
.implements Lcom/narvii/widget/NVImageView$OnImageChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/widget/UserAvatarLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/widget/UserAvatarLayout;


# direct methods
.method constructor <init>(Lcom/narvii/widget/UserAvatarLayout;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$1;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageChanged(Lcom/narvii/widget/NVImageView;ILcom/narvii/model/Media;)V
    .locals 0

    .line 187
    iget-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$1;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    invoke-static {p1}, Lcom/narvii/widget/UserAvatarLayout;->access$000(Lcom/narvii/widget/UserAvatarLayout;)V

    return-void
.end method
