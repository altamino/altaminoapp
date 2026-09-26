.class public final synthetic Lcom/narvii/app/incubator/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lai/medialab/medialabads2/analytics/AdRevenueListener;


# instance fields
.field public final synthetic a:Lcom/narvii/app/incubator/IncubatorApplication;


# direct methods
.method public synthetic constructor <init>(Lcom/narvii/app/incubator/IncubatorApplication;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/app/incubator/b;->a:Lcom/narvii/app/incubator/IncubatorApplication;

    return-void
.end method


# virtual methods
.method public final onRevenue(Lai/medialab/medialabads2/analytics/AdRevenueInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/narvii/app/incubator/b;->a:Lcom/narvii/app/incubator/IncubatorApplication;

    invoke-static {v0, p1}, Lcom/narvii/app/incubator/IncubatorApplication;->j(Lcom/narvii/app/incubator/IncubatorApplication;Lai/medialab/medialabads2/analytics/AdRevenueInfo;)V

    return-void
.end method
