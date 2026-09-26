.class Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/widget/UserAvatarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingUserInfo"
.end annotation


# instance fields
.field isMembership:Z

.field final synthetic this$0:Lcom/narvii/widget/UserAvatarLayout;

.field uid:Ljava/lang/String;

.field userIcon:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/widget/UserAvatarLayout;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->this$0:Lcom/narvii/widget/UserAvatarLayout;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    iput-object p2, p0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->uid:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->userIcon:Ljava/lang/String;

    .line 10
    .line 11
    iput-boolean p4, p0, Lcom/narvii/widget/UserAvatarLayout$PendingUserInfo;->isMembership:Z

    .line 12
    return-void
.end method
