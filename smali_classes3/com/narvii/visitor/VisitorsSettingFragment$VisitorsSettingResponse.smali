.class public final Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;
.super Lcom/narvii/model/api/ApiResponse;
.source "VisitorsSettingFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/visitor/VisitorsSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VisitorsSettingResponse"
.end annotation


# instance fields
.field private visitSettings:Lcom/narvii/model/VisitorSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 275
    invoke-direct {p0}, Lcom/narvii/model/api/ApiResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final getVisitSettings()Lcom/narvii/model/VisitorSetting;
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;->visitSettings:Lcom/narvii/model/VisitorSetting;

    return-object v0
.end method

.method public final setVisitSettings(Lcom/narvii/model/VisitorSetting;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/narvii/visitor/VisitorsSettingFragment$VisitorsSettingResponse;->visitSettings:Lcom/narvii/model/VisitorSetting;

    return-void
.end method
