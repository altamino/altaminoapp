.class public final synthetic Lcom/narvii/language/-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/narvii/util/Callback;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/narvii/language/-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/narvii/language/-$$Lambda$ContentLanguageService$mqzJ7edp7XXhuJ8her7XlqZStdA;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/narvii/language/LanguageChangeListener;

    invoke-static {v0, p1}, Lcom/narvii/language/ContentLanguageService;->lambda$saveLanguageCode$0(Ljava/lang/String;Lcom/narvii/language/LanguageChangeListener;)V

    return-void
.end method
