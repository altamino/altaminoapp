.class public Lcom/narvii/date/DateSection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public first:Z

.field public time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/narvii/date/DateSection;->first:Z

    .line 7
    .line 8
    iput-object p1, p0, Lcom/narvii/date/DateSection;->time:Ljava/lang/String;

    .line 9
    return-void
.end method
