.class public Lcom/estrongs/android/a/a/ab;
.super Lcom/estrongs/android/a/a/k;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/estrongs/android/a/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/estrongs/android/a/b/q;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/estrongs/android/a/b/l;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    check-cast p1, Lcom/estrongs/android/a/b/k;

    invoke-virtual {p1}, Lcom/estrongs/android/a/b/k;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/32 v4, 0x76a700

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected f()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/estrongs/android/a/b/q;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/estrongs/android/a/a/ac;

    invoke-direct {v0, p0}, Lcom/estrongs/android/a/a/ac;-><init>(Lcom/estrongs/android/a/a/ab;)V

    return-object v0
.end method
