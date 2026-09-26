.class public Lcom/narvii/community/JoinCommunityService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/community/IJoinCommunityService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public showJoinCommunityDialog(Lcom/narvii/app/NVActivity;I)Landroid/app/Dialog;
    .locals 0

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p2}, Lcom/narvii/community/JoinCommunityDialog;->showInnerJoinDialog(Lcom/narvii/app/NVContext;I)Landroid/app/Dialog;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
