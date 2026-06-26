.class Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;
.super Lcom/narvii/list/DividerAdapter;
.source "ExternalChannelFilterFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/feed/ExternalChannelFilterFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyDividerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/feed/ExternalChannelFilterFragment;Lcom/narvii/app/NVContext;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/narvii/feed/ExternalChannelFilterFragment$MyDividerAdapter;->this$0:Lcom/narvii/feed/ExternalChannelFilterFragment;

    .line 120
    invoke-direct {p0, p2}, Lcom/narvii/list/DividerAdapter;-><init>(Lcom/narvii/app/NVContext;)V

    return-void
.end method


# virtual methods
.method protected getDividerLayoutId()I
    .locals 1

    const v0, 0x7f0b008a

    return v0
.end method
