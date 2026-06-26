.class public Lcom/narvii/community/JoinCommunityService;
.super Ljava/lang/Object;
.source "JoinCommunityService.java"

# interfaces
.implements Lcom/narvii/community/IJoinCommunityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showJoinCommunityDialog(Lcom/narvii/app/NVActivity;I)Landroid/app/Dialog;
    .locals 0

    .line 10
    invoke-static {p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method
