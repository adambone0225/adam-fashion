import React from "react";

const Footer = () => {
  return (
    <footer id="footer">
      <section className="top">
        <h1>Adam's Fashion</h1>
        <p>
          Adam's Fashion was founded in 1975 by Adam Johnson, a young
          entrepreneur with a passion for fashion. Adam had always been
          interested in designing and creating his own clothes, and he saw an
          opportunity to turn his passion into a business.
        </p>
        <p>
          At the time, the fashion industry was dominated by big-name brands,
          and there was little room for independent designers. But Adam was
          determined to make a name for himself, and he set out to create a
          clothing line that was unique, stylish, and affordable.
        </p>
      </section>
      <section className="middle">
        <div className="item">
          <h1>categories</h1>

          <span>Women</span>
          <span>Men</span>
          <span>luxury</span>
          <span>sportwear</span>
        </div>
        <div className="item">
          <h1>Links</h1>
          <span>FAQ</span>
          <span>our stores</span>
          <span>Compare</span>
        </div>
        <div className="item">
          <h1>Contact</h1>
          <p>
            Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur,
            aliquid aliquam magni iure tempora consequuntur! Quasi?
          </p>
        </div>
      </section>
      <section className="bottom">
        <h3>payment:</h3>
        <img src="/image/pay.png" alt="" />
      </section>
    </footer>
  );
};

export default Footer;
