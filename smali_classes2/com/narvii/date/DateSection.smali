.class public Lcom/narvii/date/DateSection;
.super Ljava/lang/Object;
.source "DateSection.java"


# instance fields
.field public first:Z

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/narvii/date/DateSection;->first:Z

    .line 9
    iput-object p1, p0, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    return-void
.end method
