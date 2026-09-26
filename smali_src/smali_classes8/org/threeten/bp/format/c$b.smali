.class Lorg/threeten/bp/format/c$b;
.super Lorg/threeten/bp/format/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/threeten/bp/format/c;->i(Lorg/threeten/bp/temporal/h;Ljava/util/Map;)Lorg/threeten/bp/format/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/threeten/bp/format/c;

.field final synthetic val$store:Lorg/threeten/bp/format/i$b;


# direct methods
.method constructor <init>(Lorg/threeten/bp/format/c;Lorg/threeten/bp/format/i$b;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lorg/threeten/bp/format/c$b;->this$0:Lorg/threeten/bp/format/c;

    .line 3
    .line 4
    iput-object p2, p0, Lorg/threeten/bp/format/c$b;->val$store:Lorg/threeten/bp/format/i$b;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lorg/threeten/bp/format/e;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lorg/threeten/bp/temporal/h;JLorg/threeten/bp/format/j;Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    .line 2
    iget-object p1, p0, Lorg/threeten/bp/format/c$b;->val$store:Lorg/threeten/bp/format/i$b;

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1, p2, p3, p4}, Lorg/threeten/bp/format/i$b;->a(JLorg/threeten/bp/format/j;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
