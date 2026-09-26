.class Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;
.super Lcom/narvii/list/DividerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyDividerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment$MyDividerAdapter;->this$0:Lcom/narvii/chat/video/overlay/ChannelInviteMemberListFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0, p1}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0d049a

    return v0
.end method
